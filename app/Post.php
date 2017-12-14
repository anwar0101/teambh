<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;
use Cerbero\QueryFilters\FiltersRecords;

class Post extends Model
{
    use FiltersRecords;

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

    /**
     * The accessors to append to the model's array form.
     *
     * @var array
     */
    protected $appends = ['posted_at','div_subcategory','is_favorited_api'];


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

    public function getIsFavoritedApiAttribute()
    {
        if(Auth::guard('api')->user()){
            return count($this->favorites()->where('user_id', Auth::guard('api')->user()->id())->get()) != 0;
        }
        return false;
    }

    public function getPostedAtAttribute()
    {
        return $this->created_at->diffForHumans();
    }

    public function getDivSubcategoryAttribute()
    {
        return $this->place->divition->name .', '. $this->sub_category->name;
    }

}
