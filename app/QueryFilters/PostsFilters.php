<?php

namespace App\QueryFilters;

use Cerbero\QueryFilters\QueryFilters;

class PostsFilters extends QueryFilters
{
    protected $implicitFilters = [
        'sort',
    ];

    public function divition($id)
    {
        $this->query->whereHas('place', function ($place) use ($id) {
            $place->where('divition_id',$id);
        });
    }

    public function category($id)
    {
        $this->query->whereHas('sub_category', function ($place) use ($id) {
            $place->where('category_id','=', $id);
        });
    }

    public function sort($value = "latest"){

        if($value == "high"){
            $this->query->orderBy('price', 'desc');
        } else if($value=="low") {
            $this->query->orderBy('price', 'asc');
        } else if($value == "oldest"){
            $this->query->orderBy('created_at', 'asc');
        }

        $this->query->orderBy('created_at', 'desc');
    }

    public function search($search){
        $this->query->where('title','like','%'.$search.'%');
    }

    public function type($type){
        if($type == 'member'){
            $this->query->whereHas('user', function($user) use ($type){
                $user->where('role_id',3);
            });
        }
    }

}
