<?php

use App\Divition;
use App\Category;

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
    $extra = json_decode(\App\SubCategory::find($id)->extra_field->fields);
    $group = "";

    foreach ($extra as $key => $row) {
        if(isset($row->type)){
            if($row->type == "dropdown"){
                $input = "<select name=\"extra_values[$key]\" class=\"form-control\">";
                foreach ($row->options as $dropkey => $value) {
                    $input = $input . "<option value=\"$dropkey\">$value</option>";
                }
                $input = $input . "</select>";
            } else if($row->type == "radio"){
                $input = '';
                foreach ($row->options as $radiokey => $value) {
                    $checked = ($row->default == $radiokey) ? "checked" :"";
                    $input = $input . "<label class=\"radio-inline\"><input type=\"radio\" $checked name=\"extra_values[$key]\" value=\"$value\">$value</label>";
                }
            } else if($row->type == "text") {
                $input = "<input type=\"text\" name=\"extra_values[$key]\" placeholder=\"$key\" class=\"form-control\">";
            } else if($row->type == "number") {
                $input = "<input type=\"number\" name=\"extra_values[$key]\" placeholder=\"$key\" class=\"form-control\">";
            }

            $group = $group . '<div class="form-group col-md-12 col-sm-12">';
            if ($row->type == "radio") {
                $radio = " : ";
            } else {
                $radio = "";
            }
            $group = $group . "<label for=\"$key\">$key". $radio ."</label> " . $input . '</div>';
        }
    }
    return $group;
});
