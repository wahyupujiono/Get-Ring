@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h3>Menu Catering <small><a href="{{route('vendor-products.create') }}" class="btn btn-warning btn-sm">New Menu Catering</a></small></h3>
            {!! Form::open(['url'=>'products', 'method'=>'get', 'class'=>'form-inline']) !!}
            <div class="form-group {!! $errors->has('q') ? 'has-error' :'' !!}">
            {!! Form::text('q', isset($q) ? $q :null, ['class'=>'form-control', 'placeholder'=>'Type Nama / Vendor']) !!}
            {!! $errors->first('q', '<p class="help-block">:message</p>') !!}
            </div>
            {!! Form::submit('Search',['class'=>'btn btn-primary'] ) !!}
            {!! Form::close() !!}
        </div>

    <table class="table table-hover">
        <thead>
        <input type="checkbox" id="checkAll"/> Check all</label> and <a href="">Delete all checked</a>
            <tr>
                <td>Mark</td>
                <td>Name</td>
                <td>Vendor</td>
                <td>Category</td>
                <td></td>
            </tr>
        </thead>
        <tbody>
        @foreach($products as $product)
            <tr>
             <td><input type="checkbox" name="checkbox[]" data-id="checkbox"class="cb" value="{{$product->id}}" /></td>
                <td>{{ $product->name}}</td>
                <td>{{ $product->vendor}}</td>
                <td>
                    @foreach($product->categories as $category)
                    <span class="label label-primary">
                    <i class="fa fa-btn fa-tags"></i>
                    {{$category->title}}</span>
                    @endforeach
                </td>
                <td>
                    {!! Form::model($product,['route'=>['vendor-products.destroy', $product], 'method'=>'delete', 'class'=>'form-inline']) !!}
                    <a href="{{route('vendor-products.edit', $product->id)}}">Edit</a> |
                    {!! Form::submit('delete', ['class'=>'btn btn-xs btn-danger js-submit-confirm']) !!}
                    {!! Form::close() !!}
                </td>
            </tr>
        @endforeach
        </tbody>
    </table>
    {{$products->appends(compact('q'))->links() }}
    </div>
</div>
@endsection
