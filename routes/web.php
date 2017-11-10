<?php

use App\Divition;
use App\Category;

use Illuminate\Http\Request;

use Illuminate\Database\Eloquent\ModelNotFoundException;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
Route::get('/', function () {
    $divitions = Divition::all();
    $categories = Category::all();
    $poupulers = Category::all()->take(4);
    return view('welcome', compact('divitions', 'categories', 'poupulers'));
});

Route::get('/redirect', 'SocialAuthFacebookController@redirect');
Route::get('/callback', 'SocialAuthFacebookController@callback');

Auth::routes();

Route::prefix('user')->group(function(){
  Route::get('/dashboard', 'UserController@dashboard')->name('dashboard');
  Route::get('/membership', 'UserController@membership')->name('membership');
  Route::get('/resume', 'UserController@resume')->name('resume');
  Route::get('/favorite-ads', 'UserController@favorite')->name('favorite-ads');
  Route::get('/settings', 'UserController@settings')->name('settings');
});

Route::resource('ads', 'AdsController');

Route::resource('post', 'PostController');

Route::get('/make-favorite/{id}', 'PostController@favorite')->name('favorite.check');


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();

    //reviews of ads
    Route::get('/ads/review', function()
    {
        $posts = \App\Post::where('status', 0)->get();
        return view('voyager::review.index', compact('posts'));
    })->name('ads.review');

    Route::get('/ads/review/{id}/{status}', function(Request $request, $id ,$status)
    {
        $post = \App\Post::find($id);
        $post->status = $status;
        $post->save();
        return back();
    })->name('post.status');
});


//ajax request
Route::get('/extra_fields/{id}', function($id)
{
    if(isset($id)){
        try {
            $extras = \App\SubCategory::findOrFail($id)->extra_field;
            if(count($extras) > 0){
                $extras = $extras->fields;
            } else {
                return '[]';
            }
        } catch (ModelNotFoundException $e) {
            return '[]';
        }
    } else {
        return '[]';
    }

    return response()->json($extras);
});
