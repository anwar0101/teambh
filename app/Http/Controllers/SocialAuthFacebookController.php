<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Socialite;

use App\Services\SocialFacebookAccountService;

class SocialAuthFacebookController extends Controller
{
    /**
   * Create a redirect method to facebook api.
   *
   * @return void
   */
    public function redirect()
    {
        return Socialite::driver('facebook')->redirect();
    }

    /**
     * Return a callback method from facebook api.
     *
     * @return callback URL from facebook
     */
    public function callback(Request $request, SocialFacebookAccountService $service)
    {
        session()->put('state', $request->input('state'));
        $user = $service->createOrGetUser(Socialite::driver('facebook')->user());
        auth()->login($user);
        return redirect()->to('/');
    }

    /**
     * Return a callback method from facebook api login.
     *
     * @return callback URL from facebook
     */
    public function social(Request $request)
    {
        $user = SocialFacebookAccountService::createOrGetUser(Socialite::driver('facebook')->stateless()->userFromToken($request->fb_token));
        if($user){
            $success['token'] = $user->createToken("MyApp")->accessToken;
            return response()->json($success, 200);
        }
        return response()->json(['error' => 'Unauthrized'], 401);
    }
}
