<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $visible = ['id','name'];
    protected $fillable = ['name','icon','description'];

    public function sub_categories()
    {
        return $this->hasMany('App\SubCategory');
    }

    /**
     * Get all of the posts for the divition.
     */
    public function posts()
    {
        return $this->hasManyThrough('App\Post', 'App\SubCategory');
    }

    public function getTotalPostAttribute(){
        return count($this->posts);
    }

    /**
     * Get all of the posts for the divition.
     */
    public function extra_fields()
    {
        return $this->hasManyThrough('App\ExtraField', 'App\SubCategory');
    }

}
