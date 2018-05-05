<div class="form-group {!! $errors->has('name') ? 'has-error' : '' !!}">
    {!! Form::label('name', 'Nama', ['class'=>'col-md-4 control-label']) !!}
    <div class="col-md-6">
        {!! Form::text('name', null, ['class'=>'form-control']) !!}
        {!! $errors->first('name', '<p class="help-block">:message</p>') !!}
    </div>
</div>

<div class=" form-group {!! $errors->has('detail')  ? 'has-error' : ''!!}">
    {!! Form::label('detail', 'Alamat', ['class'=>'col-md-4 control-label']) !!}
    <div class="col-md-6">
    {!! Form::textarea('detail', null, ['class'=>'form-control', 'row'=>3]) !!}
    {!! $errors->first('detail', '<p class="help-block">:message</p>') !!}
    </div>
</div>

<div class="form-group {!! $errors->has('province_id')  ? 'has-error' : '' !!}">
    {!! Form::label('province_id', 'Provinsi', ['class' => 'col-md-4 control-label']) !!}
    <div class="col-md-6">
     {!! Form::select('province_id', [''=>'']+DB::table('provinces')->lists('name', 'id'),null, ['class'=>'form-control', 'id'=>'province_selector']) !!}
    {!! $errors->first('province_id', '<p class="help-block">:message</p>') !!}

    </div>
</div>

<div class="form-group {!! $errors->has('regency_id') ? 'has-error' : '' !!}">
    {!! Form::label('regency_id', 'Kabupaten/Kota', ['class'=>'col-md-4 control-label'])
    !!}
    <div class="col-md-6">
    {!! Form::select('regency_id',
     old('province_id') !== null ? DB::table('regencies')->where ('province_id', old('province_id'))->lists('name', 'id') : [], old('regency_id'), ['class'=>'form-control', 'id'=>'regency_selector']) !!}
    {!! $errors->first('regency_id','<p class-"help-block">:message</p>') !!}
    </div>
</div>

<div class="form-group {!! $errors->has('phone')  ? 'has-error' : '' !!}">
    {!! Form::label('phone','Telepon', ['class'=>'col-md-4 control-label']) !!}
    <div class="col-md-6">
        <div class="input-group">
            <div class="input-group-addon">+62</div>
            {!! Form::text('phone', null, ['class'=>'form-control']) !!}
        </div>
        {!! $errors->first('phone', '<p class="help-block">:message</p>') !!}
    </div>
</div>

<div class="form-group {!! $errors->has('name_event') ? 'has-error' : '' !!}">
    {!! Form::label('name_event', 'Nama Event/Acara', ['class'=>'col-md-4 control-label']) !!}
    <div class="col-md-6">
        {!! Form::text('name_event', null, ['class'=>'form-control']) !!}
        {!! $errors->first('name_event', '<p class="help-block">:message</p>') !!}
    </div>
</div>

<div class=" form-group {!! $errors->has('detail_event')  ? 'has-error' : ''!!}">
    {!! Form::label('detail_event', 'Deskripsi Event/Acara', ['class'=>'col-md-4 control-label']) !!}
    <div class="col-md-6">
    {!! Form::textarea('detail_event', null, ['class'=>'form-control', 'row'=>3]) !!}
    {!! $errors->first('detail_event', '<p class="help-block">:message</p>') !!}
    </div>
</div>

<div class=" form-group {!! $errors->has('date')  ? 'has-error' : ''!!}">
    {!! Form::label('date_event', 'Tanggal Event/Acara', ['class'=>'col-md-4 control-label']) !!}
    <div class="col-md-6">
    {!! Form::date('date_event', null, ['class'=>'form-control', 'row'=>3]) !!}
    {!! $errors->first('date_event', '<p class="help-block">:message</p>') !!}
    </div>
</div>

