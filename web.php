<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


Route::group(['prefix' => 'questions'], function () {

    Route::get('/ask', 'QuestionController@askQuestion')
        ->name('ask_question');
    Route::post('/ask', 'QuestionController@saveQuestion')
        ->name('save_question');
    Route::post('/ask-update-theme-list', 'QuestionController@updateThemeList')
        ->name('update-theme-list');
    Route::post('/ask-update-expert-list', 'QuestionController@updateExpertList')
        ->name('update-expert-list');

    });
});




