<div class="form-group">
    <div class="row">
        <div class="col-md-4 text-right">
            <label>Order #</label>
        </div>
        <div class="col-md-6">
            {{ $order->padded_id }}
        </div>
    </div>
</div>

<div class="form-group">
    <div class="row">
        <div class="col-md-4 text-right">
            <label>Customer</label>
        </div>
        <div class="col-md-6">
            {{ $order->user->name}}
        </div>
    </div>
</div>

<div class="form-group">
    <div class="row">
        <div class="col-md-4 text-right">
            <label>Alamat Pengirim dan Detail Acara</label>
        </div>
        <div class="col-md-6">
            <address>
                <strong>{{$order->address->name}}</strong><br>
                {{$order->address->detail}}<br>
                {{$order->address->regency->name}}, {{$order->address->regency->province->name}}<br>
                <abbr title="Phone">P:</abbr>+62{{$order->address->phone}} <br>
                <abbr title="Event">Acara:</abbr> {{ $order->address->name_event }} <br>
                <abbr title="Deskripsi Event">Deskripsi Acara:</abbr> {{ $order->address->detail_event }} <br>
                <abbr title="Tanggal Event">Tanggal Acara:</abbr> {{ $order->address->date_event }} <br>
            </address>
        </div>
    </div>
</div>

<div class="form-group">
    <div class="row">
        <div class="col-md-4 text-right">
            <label>Detail</label>
        </div>
        <div class="col-md-6">
            @include('customer._details', compact('order'))
        </div>
    </div>
</div>

<div class="form-group">
    <div class="row">
        <div class="col-md-4 text-right">
            <label class="control-label">Status</label>
        </div>
        <div class="col-md-6">
            {{ $order->human_status}}
        </div>
    </div>
</div>

<div class="panel panel-default">
    <div class="panel-heading">
        <h3 class="panel-title">Upload Bukti Pembayaran</h3>
    </div>
        <div class="panel-body">
            
            <div class="form-group {!! $errors->has('photo') ? 'has-error' :'' !!}">
                {!! Form::label('photo', 'Bukti Pembayaran (jpeg, png, jpg)') !!}
                {!! Form::file('photo') !!}
                {!!  $errors->first('photo', '<p class="help-block">:message</p>') !!}

            @if(isset($model) && $model->photo !== '')
            <div class="row">
                <div class="col-sm-6">
                    <p>Current Photo :</p>
                    <div class="thumbnail">
                        <img src="{{ url('/img/bukti-pembayaran/' . $model->photo) }}" class="img-rounded">
                    </div>
                </div>
            </div>
            @endif
            </div>
                {!! Form::submit(isset($model) ? 'Update' : 'Save', ['class'=>'btn btn-primary']) !!}
            
        </div>
    </div>
</div>
