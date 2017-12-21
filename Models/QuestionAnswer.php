<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\EdipresseTranslatable;

class QuestionAnswer extends Model
{ 
    public $table = 'questions_answers';
    
    use EdipresseTranslatable;

    protected $translatable = [
        'title',
        'slug',
        'question_text',
        'answer_text',
        'meta_title',
        'meta_keywords',
        'meta_description',
    ];

    protected $fillable = [
        'theme_id',
        'expert_id',
        'active',
        'views',
        'email_inquirer',
        'created_at',
        'updated_at',
        'published_at',
    ];

    protected $with = ['translations'];


    public function getUrlAttribute()
    {
        if (!isset($this->id)) {
            return '';
        }

        return url('questions/themes/' . $this->theme->slug. '/'.$this->id. '-'.$this->slug);
    }
    
    
    public function expertId()
    {
        return $this->belongsTo(Expert::class, 'expert_id', 'id');
    }
    public function themeId()
    {
        return $this->belongsTo(Theme::class, 'theme_id', 'id');
    }

    public function theme()
    {
        return $this->belongsTo(Theme::class);
    }

    public function expert()
    {
        return $this->belongsTo(Expert::class);
    }
    public function comments() 
    {
        return $this->hasMany(Comment::class);
        
    }

    public function scopeTop($query, $limit)
    {
        return $query->active()->orderBy('id', 'desc');
    }

    public function scopePaginateTop($query)
    {
        return $query->active()->orderBy('views', 'desc');
    }

    public function scopeActive($query)
    {
        return $query->where('active', 1);
    }

}

