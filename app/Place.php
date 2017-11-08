<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Place extends Model
{
    protected $visible = ['id','name'];
    protected $fillable = ['name','divition_id'];

    public function posts()
    {
        return $this->hasMany('App\Post');
    }

    public function divition()
    {
        return $this->belongsTo('App\Divition');
    }
}
