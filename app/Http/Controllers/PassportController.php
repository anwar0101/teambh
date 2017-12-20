<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

use App\Post;
use App\Category;
use App\Divition;
use App\User;

class PassportController extends Controller
{
    public $successStatus = 200;

    public function login()
    {
        if(Auth::attempt(['email' => request('email'), 'password' => request('password')])){
            $user = Auth::user();
            $success['access_token'] = $user->createToken("MyApp")->accessToken;
            return response()->json($success, $this->successStatus);
        } else {
            return response()->json(['error' => 'Unauthrized'], 401);
        }
    }

    public function register(Request $request){
        $validators = Validator::make($request->all(), [
            'name' => 'required',
            'email' => 'required|email',
            'password' => 'required',
            'c_password' => 'required|same:password',
        ]);

        if($validators->fails()){
            return response()->json(['error' => $validators->errors()], 401);
        }

        $inputs = $request->all();
        $inputs['password'] = bcrypt($inputs['password']);
        $user = User::create($inputs);
        $success['access_token'] = $user->createToken('KoridbikiRest')->accessToken;
        $success['name'] = $user->name;

        return response()->json(['success' => $success], $this->successStatus);
    }
}
