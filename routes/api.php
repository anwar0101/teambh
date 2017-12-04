<?php

use Illuminate\Http\Request;

use Illuminate\Support\Facades\Auth;

use App\Http\Controllers\PassportController;
use App\Http\Controllers\SocialAuthFacebookController;
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
});
Route::get('/ads', function()
{
    $posts = \App\Post::latest()->paginate(20);
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
