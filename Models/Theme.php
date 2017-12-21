<?php

namespace App;
use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\CroppedPhotos;
use TCG\Voyager\Traits\EdipresseTranslatable;

class Theme extends Model
{
    use CroppedPhotos, EdipresseTranslatable;

    public $timestamps = false;
    protected $translatable = ['title', 'slug', 'text_full', 'meta_title', 'meta_keywords', 'meta_description'];
    protected $fillable = ['image', 'svg-ico'];
    protected $with = ['translations'];
    
    public function experts()
    {
        return $this->belongsToMany(Expert::class);
    }

    public function getUrlAttribute()
    {
        if (!isset($this->id)) {
            return '';
        }

        return url('questions/themes' . '/' . $this->slug);
    }

    public function getSvgUrlAttribute()
    {
        if (!isset($this->svg_ico)) {
            return '';
        }
        $content = json_decode($this->svg_ico);
        return url('storage/' . $content[0]->download_link);
    }


    public function questions()
    {
        return $this->hasMany(QuestionAnswer::class);
    }

    public function scopePopular($query, $offset, $limit)
    {
        return $query->active()
                     ->offset($offset)
                     ->limit($limit)
                     ->orderBy('id', 'desc');
    }

    public function scopePaginatePopular($query)
    {
        return $query->active()
            ->orderBy('id', 'desc');
    }

    public function scopeSimilar($query, $offset, $limit, $slug)
    {
        return $query
            ->whereTranslation('slug', '!=', $slug)
            ->active()
            ->offset($offset)
            ->limit($limit)
            ->orderBy('id', 'desc');
    }

    public function scopeActive($query)
    {
        return $query->where('active', '=', 1);
    }
}
