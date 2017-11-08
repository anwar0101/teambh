<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Post;
use App\Category;
use App\Divition;

class AdsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $divitionFilter = $request->divition;
        $categoryFilter = $request->category;
        $searchFilter = $request->search;

        if(!empty($divitionFilter) && !empty($categoryFilter)){
            $posts = Divition::find($divitionFilter)->posts()->where('status', '1')->latest()->paginate();
        } else if(!empty($divitionFilter)){
            $posts = Divition::find($divitionFilter)->posts()->latest()->paginate();
        } else if(!empty($categoryFilter)){
            $posts = Category::find($categoryFilter)->posts()->latest()->paginate();
        }else if(!empty($searchFilter)){
            $posts = Post::where('title', 'like', '%' . $searchFilter . '%')->get();
        } else {
            $posts = Post::where('status', '1')->latest()->paginate();
        }

        $categories = Category::all();
        $divitions = Divition::all();
        return view('ads.index', compact('posts', 'categories','divitions', 'divitionFilter', 'categoryFilter'))->with('search', $searchFilter);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        return view('ads.show');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
