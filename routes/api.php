<?php

use Illuminate\Http\Request;

use Illuminate\Support\Facades\Auth;

use App\Http\Controllers\PassportController;
use App\Http\Controllers\SocialAuthFacebookController;
use Illuminate\Support\Facades\Validator;

use App\QueryFilters\PostsFilters;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::post('/login', 'PassportController@login');
Route::post('/register', 'PassportController@register');
Route::post('/social_auth', 'SocialAuthFacebookController@social');

Route::group(['middleware' => 'auth:api'], function() {
    Route::get('/user', function(Request $request)
    {
        return response()->json(Auth::user(), 200);
    });

    Route::get('/my-favoirites', function()
    {
        $posts = Auth::user()->favorites();
        return response()->json($posts, 200);
    });

    Route::post('/post-new', function(Request $request)
    {
        $validators = Validator::make($request->all(), [
            'title' => 'required',
            'description' => 'required',
            'sub_category_id' => 'required',
            'place_id' => 'required',
            'photo1' => 'required',
            'price' => 'required',
            'contact' => 'required',
        ]);

        if($validators->fails()){
            return response()->json(['error' => $validators->errors()], 404);
        }

        $data = $request->all();
        $data['user_id'] = Auth::id();

        if ($request->hasFile('photo1')) {
            $imgStore = Storage::putFile('public/posts', $request->file('photo1'));
            $data['photo1'] = $imgStore;
            $data['photo1'] = str_replace('public/','',$data['photo1']);
        }
        if ($request->hasFile('photo2')) {
            $imgStore = Storage::putFile('public/posts', $request->file('photo2'));
            $data['photo2'] = $imgStore;
            $data['photo2'] = str_replace('public/','',$data['photo2']);
        }
        if ($request->hasFile('photo3')) {
            $imgStore = Storage::putFile('public/posts', $request->file('photo3'));
            $data['photo3'] = $imgStore;
            $data['photo3'] = str_replace('public/','',$data['photo3']);
        }
        if ($request->hasFile('photo4')) {
            $imgStore = Storage::putFile('public/posts', $request->file('photo4'));
            $data['photo4'] = $imgStore;
            $data['photo4'] = str_replace('public/','',$data['photo4']);
        }

        if($post = Post::create($data)){
            return response()->json(['status' => "successed"], 200);
        } else {
            return response()->json(['status' => "failed"], 200);
        }
    });

});
Route::get('/ads', function(PostsFilters $filters)
{
    $posts = \App\Post::where('status',1)->filterBy($filters)->paginate(20);
    return response()->json($posts, 200);
});

Route::get('/divitions', function()
{
    $divitions = \App\Divition::all();
    return response()->json($divitions, 200);
});

Route::get('/places/{id}', function($id)
{
    $divition = \App\Divition::find($id);
    return response()->json($divition->places, 200);
});

Route::get('/categories', function()
{
    $posts = \App\Category::all();
    return response()->json($posts, 200);
});
Route::get('/subcategories/{id}', function($id)
{
    $category = \App\Category::find($id);
    return response()->json($category->sub_categories, 200);
});
