<option value="0">---</option>
@foreach ($experts as $expert)
    <option value="{{$expert->id}}" {{($expert->id==$expert_id) ? 'selected="selected"' : ''}} data-slug="{{$expert->slug}}">{{$expert->name}}</option>
@endforeach