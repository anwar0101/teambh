<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class ExtraField extends Model
{
    public function sub_category()
    {
        return $this->belongsTo('App\SubCategory');
    }
}
