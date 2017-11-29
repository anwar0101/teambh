<?php

use Illuminate\Http\Request;

use Illuminate\Support\Facades\Auth;

use App\Http\Controllers\PassportController;
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

Route::group(['middleware' => 'auth:api'], function() {
    Route::get('/user', function(Request $request)
    {
        return response()->json(['success' => Auth::user()], 200);
    });
});
Route::get('/ads', function()
{
    $posts = \App\Post::latest()->paginate(3);
    return response()->json($posts, 200);
});

Route::get('/divitions', function()
{
    $posts = \App\Divition::all();
    return response()->json($posts, 200);
});

Route::get('/categories', function()
{
    $posts = \App\Category::all();
    return response()->json($posts, 200);
});
