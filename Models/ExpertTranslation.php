<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ExpertTranslation extends Model
{
    public $timestamps = false;

    protected $fillable = [
        'name',
        'slug',
        'profession',
        'meta_title',
        'meta_keywords',
        'meta_description',
        'specialization',
        'work_place',
        'description',
        'body',
    ];
}
