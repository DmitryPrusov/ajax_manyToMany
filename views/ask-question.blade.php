@extends('layouts.main')

@section('meta_title', $category->meta_title)
@section('meta_description', $category->meta_description)
@section('meta_keywords', $category->meta_keywords)

@section('meta')
    <link rel="canonical" href="{{ url(Request::path()) }}"/>
@endsection

@section('content')

    @include('layouts.main.menu.content', ['menuSubcategories' => $category->children])

    <div class="wrap">
        <div class="content-wrp clearfix">
            @include('ad-scripts.adriver-top-banner')

            <main class="main" role="main">
                <div class="main-content">

                    @php
                        $breadcrumbs = [
                            ['title' => __('Главная'), 'link' => url('/')],
                            ['title' => $category->title, 'link' => url($category->slug)],
                        ];
                    @endphp

                    @include('common.breadcrumbs', [
                        'breadcrumbs' => $breadcrumbs
                    ])

                    <div class="questions">
                        <h1 class="section-title-2 font-add">{{__('Форма вопроса')}}</h1>
                    </div>
                    {!! Form::open(['method' => 'POST', 'id' => 'superdom-form', 'url' => action('QuestionController@saveQuestion'), 'autocomplete' => 'off', 'name' => 'question-form', 'class' => 'question-form superdom-form']) !!}

                    <input type="hidden" id="token" name="_token" value="{{ csrf_token() }}">
                    <div class="expert-form-itm column-2">
                        <div class="expert-form-itm-l font-add">
                            <label for="theme"><span>1.</span>{{__('Тема')}}</label>
                        </div>
                        <div class="expert-form-itm-r">
                            <select name="theme_select" id="theme-select" class="theme-select-container">
                            @include('questions-block.partials.select-theme')
                            </select>
                        </div>

                        <span class="theme_id-error form-error"> </span>
                    </div>
                    <div class="expert-form-itm column-2">
                        <div class="expert-form-itm-l font-add">
                            <label for="itm-id-2"><span>2.</span>{{__('Эксперт')}}</label>
                        </div>
                        <div class="expert-form-itm-r">
                            <select name="expert_select" id="expert-select" class="expert-select-container" >
                            @include('questions-block.partials.select-expert')
                            </select>

                        </div>
                        <span class="expert_id-error form-error"> </span>
                    </div>
                    <div class="expert-form-itm column-1">
                        <div class="expert-form-itm-l font-add">
                            <label for="question_text"><span>3.</span>{{__('Вопрос')}}</label>
                        </div>
                        <div class="expert-form-itm-r">
                            <textarea name="question_text" id="description"></textarea>
                            <span id="characters"> </span>
                        </div>
                        <span class="question_text-error form-error"> </span>
                    </div>

                    <div class="expert-form-itm column-2">
                        <div class="expert-form-itm-l font-add">
                            <label for="email"><span>4.</span>{{__('E-mail для ответа')}}</label>
                        </div>
                        <div class="expert-form-itm-r">
                            <input name="email" id="email" value="" placeholder="example@gmail.com">
                        </div>
                    </div>
                    <span class="email-error form-error"> </span>

                    <button type="submit" id="question-form" class="button button-1 color-1 btn-big expert-form-btn">
                        <div class="button-wrp">
                            <span class="button-lbl">{{__('Отправить вопрос')}}</span>
                            <div class="button-ico">
                                <svg viewBox="0 0 60 60" xmlns="http://www.w3.org/2000/svg">
                                    <use xlink:href="#right-arrow"></use>
                                </svg>
                            </div>
                        </div>
                    </button>
                    <button id="hidden_button" class="popup-init" popup-target="popup-vopros" > </button>

                    {!! Form::close() !!}
                </div>
            </main>
            @include('layouts.main.sidebar')
        </div>
    </div>
    <script>
        $(document).ready(function () {

            $('select#expert-select').change(function () {
                var expert_id = this.value;
                var _token = $("#token").val();

                var theme_id = $('select#theme-select').val();
                var $container = $('.theme-select-container');

                $.ajax({
                    url: '{{action('QuestionController@updateThemeList')}}',
                    data: {expert_id:expert_id, theme_id:theme_id, _token:_token},
                    type: 'POST',
                    success: function (data) {

                        if ($.isEmptyObject(data.error)) {
                            $container.html(data.html);

                        } else {
                            console.log('fail');
                        }
                    }
                });
            });

            $('select#theme-select').change(function () {
                var theme_id = this.value;
                var _token = $("#token").val();
                var expert_id = $('select#expert-select').val();

                var $container = $('.expert-select-container');

                $.ajax({
                    url: '{{action('QuestionController@updateExpertList')}}',
                    data: {theme_id: theme_id, expert_id:expert_id, _token: _token},
                    type: 'POST',
                    success: function (data) {

                        if ($.isEmptyObject(data.error)) {
                            $container.html(data.html);

                        } else {
                            console.log('fail');
                        }
                    }
                });
            });

            var expert_slug  = '{{$expert_slug}}';
            if  (expert_slug.length !=0) {
                var value = $('select#expert-select').find("option[data-slug=" + expert_slug + "]").val();
                $('select#expert-select').val(value).trigger('change');
            }

            var theme_slug  = '{{$theme_slug}}';

            if  (theme_slug.length !=0) {
                var value2 = $('select#theme-select').find("option[data-slug=" + theme_slug + "]").val();
                $('select#theme-select').val(value2).trigger('change');
            }

        });

    </script>

    @include('questions-block.partials.form-scripts')

    <div class="site-popup">
        <div class="site-popup-block">
            <div cla="site-popup-wrp">
                <div class="site-popup-body popup-vopros">
                    <div class="site-popup-close">
                        <svg viewBox="0 0 60 60" xmlns="http://www.w3.org/2000/svg">
                            <use xlink:href="#close"></use>
                        </svg>
                    </div>
                    <div class="popup-title font-add">Спасибо за вопрос!</div>
                    <div class="site-popup-msg">Ответы мы пришлем на указанную<br> Вами электронную почту.</div>
                </div>
            </div>
        </div>
    </div>

@endsection


