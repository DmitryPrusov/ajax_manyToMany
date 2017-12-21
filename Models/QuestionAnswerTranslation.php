<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class QuestionAnswerTranslation extends Model
{
    public $table = 'questions_answers_translations';
    public $timestamps = false;
    protected $fillable = [
        'title',
        'slug',
        'question_text',
        'answer_text',
        'meta_title',
        'meta_keywords',
        'meta_description', 
    ];
}

