@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h3>Upload Bukti Pembayaran{{  $order->title }}</h3>
            {!! Form::model($order, ['route'=>['customer-orders.update', $order], 'method'=>'patch', 'files'=>true]) !!}
            @include('customer._form', ['model'=>$order])
            {!! Form::close() !!}
        </div>
    </div>
</div>
@endsection