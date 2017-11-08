<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;

class Post extends Model
{
    protected $fillable = [
        'user_id',
        'sub_category_id',
        'place_id',
        'title',
        'description',
        'photo1',
        'photo2',
        'photo3',
        'photo4',
        'price',
        'negatiable',
        'contact',
        'extra_values'
    ];

    protected $casts = [
        'extra_values' => 'array'
    ];

    public function place()
    {
        return $this->belongsTo('App\Place');
    }

    public function sub_category()
    {
        return $this->belongsTo('App\SubCategory');
    }

    public function user()
    {
        return $this->belongsTo('App\User');
    }

    public function favorites()
    {
        return $this->hasMany('App\Favorite');
    }

    public function getIsFavoritedAttribute()
    {
        return count($this->favorites()->where('user_id', Auth::id())->get()) != 0;
    }

}
