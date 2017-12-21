<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\CroppedPhotos;
use TCG\Voyager\Traits\EdipresseTranslatable;

class Expert extends Model
{
    use CroppedPhotos,
        EdipresseTranslatable;

    protected $translatable = [
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

    protected $fillable = [
        'email',
        'photo',
        'password',
        'remember_token',
        'phone',
        'active',
        'description_form'
    ];

    protected $with = ['translations'];

    public function getUrlAttribute()
    {
        if (!isset($this->id)) {
            return '';
        }

        return url('questions/experts' . '/' . $this->slug);
    }

    public function themes()
    {
        return $this->belongsToMany(Theme::class);
    }

    public function theme()
    {
        return $this->themes()->first();
    }
    public function questionAnswers()
    {
        return $this->hasMany(QuestionAnswer::class);
    }
    public function questions()
    {
        return $this->hasMany(QuestionAnswer::class);
    }

    public function scopeActive($query)
    {
        return $query->where('active', 1);
    }

    public function scopeAllExperts($query, $offset, $limit)
    {
        return $query->active()
            ->offset($offset)
            ->limit($limit)
            ->orderBy('id', 'desc');
    }

    public function scopePaginateAllExperts($query)
    {
        return $query->active()
            ->orderBy('id', 'desc');
    }

    public function scopeTop($query, $limit)
    {
        return $query->active()->orderBy('id', 'desc');
    }
}
