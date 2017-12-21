@foreach ($themes as $theme)
    <option value="{{$theme->id}}" {{($theme->id==$theme_id) ? 'selected="selected"' : ''}} data-slug="{{$theme->slug}}">{{$theme->title}}</option>
@endforeach
