<?php

namespace App\Http\Controllers;

use App\Expert;

use App\QuestionAnswer;
use App\Theme;
use App\Expert;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Validator;

class QuestionController extends Controller
{

    public function askQuestion(Request $request)
    {
        $categorySlug = 'questions';

        $theme_slug='';
        $expert_slug='';
        $theme_id='';
        $expert_id='';
        if (!empty($request->theme)) {$theme_slug = $request->theme; }
        elseif (!empty($request->expert))  {$expert_slug =  $request->expert; }

        $category = Category::getActiveBySlug($categorySlug);


        $themes = Theme::where('active', '=', 1)
            ->get();
        $experts = Expert::where('active', '=', 1)
            ->get();

        return view('views.ask-question', compact('category', 'themes', 'experts', 'theme_slug', 'theme_id', 'expert_slug','expert_id'));
    }
    public function saveQuestion(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'question_text' => 'required|max:500',
            'email' => 'required|email',
            'expert_select' => 'required',
            'theme_select' => 'required',
        ]);

        if ($validator->passes()) {
            $expert_id = intval($request->expert_select);
            $theme_id = intval($request->theme_select);

            $question = new QuestionAnswer();
            // если выбран какой-то кокретный эксперт:
             if ($expert_id != 0) {
                 $expert = Expert::where('id', $expert_id)->firstOrFail();
                 $question->expert()->associate($expert);
             }
            $theme = Theme::where('id', $theme_id)->firstOrFail();
            $question->theme()->associate($theme);
            $question->question_text = $request->question_text;
            $question->email_inquirer = $request->email;
            $question->save();
            return response()->json(['success'=>'Успех!']);
        }

        return response()->json(['error'=>$validator->errors()]);

    }

   public function updateThemeList (Request $request) {

        $validator = Validator::make($request->all(), [
            'expert_id' => 'integer',
            'theme_id' => 'integer'
        ]);
        $expert_id ='';
        $theme_id ='';
        if ($validator->passes()) {
            $expert_id = intval($request->expert_id);
            $theme_id = intval($request->theme_id);

        }

        if ($expert_id == 0) {
            $themes = Theme::where('active', '=', 1)
                ->get();
        }
        else {
            $expert = Expert::where('id', '=', $expert_id)
                ->firstOrFail();
            $themes = $expert->themes()->where('active', '=', 1)->get();
        }

        $html = view('questions-block.partials.select-theme', compact('themes', 'theme_id'))->render();
        return response()->json(compact('html'));

    }

    public function updateExpertList (Request $request) {

        $validator = Validator::make($request->all(), [
            'expert_id' => 'integer',
            'theme_id' => 'integer',
        ]);
        $expert_id ='';
        $theme_id ='';
        if ($validator->passes()) {
            $theme_id = intval($request->theme_id);
            $expert_id = intval($request->expert_id);
        }
        $theme = Theme::where('id', '=', $theme_id)
            ->firstOrFail();

        $experts = $theme->experts()->where('active', '=', 1)->get();

        $html = view('questions-block.partials.select-expert', compact('experts', 'expert_id'))->render();
        return response()->json(compact('html'));
    }


}
