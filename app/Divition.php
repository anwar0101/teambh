<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Divition extends Model
{
    protected $visible = ['id','name'];
    protected $fillable = ['name'];

    public function places()
    {
        return $this->hasMany('App\Place');
    }

    /**
     * Get all of the posts for the divition.
     */
    public function posts()
    {
        return $this->hasManyThrough('App\Post', 'App\Place');
    }

    public function getTotalPostAttribute(){
        return count($this->posts);
    }
}
