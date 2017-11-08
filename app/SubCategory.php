<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SubCategory extends Model
{
    protected $visible = ['id','name'];
    protected $fillable = ['name','category_id'];

    public function category()
    {
        return $this->belongsTo('App\Category');
    }

    public function extra_field()
    {
        return $this->hasone('App\ExtraField');
    }
}
