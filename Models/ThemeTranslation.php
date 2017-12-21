<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ThemeTranslation extends Model
{
    
    public $timestamps = false;
    protected $fillable = ['title', 'slug', 'text_full', 'meta_title', 'meta_keywords', 'meta_description'];
    
}
