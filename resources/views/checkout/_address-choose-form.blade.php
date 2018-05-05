{!! Form::open(['url'=>'/checkout/address', 'method'=>'post', 'class'=>'form-horizontal']) !!}
    <div class="form-group {!! $errors->has('address_id') ? 'has-error' : '' !!}">
        {!!  Form::label('address_id', 'Pilih Alamat dan Acara', ['class'=>'col-md-4 control-label']) !!}
        <div class="col-md-6">
            @foreach(auth()->user()->addresses as $address)
            <div class="row">
                <div class="col-md-1">
                    <label>
                        {!! Form::radio('address_id', $address->id, null) !!}
                    </label>
                </div>
                <div class="col-md-11">
                    <address>
                    <strong>{{ $address->name }}</strong><br>
                    {{ $address->detail }} <br>
                    {{ $address->regency->name }}, {{ $address->regency->province->name }} <br>
                    <abbr title="Phone">P:</abbr> +62 {{ $address->phone }} <br>
                    <abbr title="Event">Acara:</abbr> {{ $address->name_event }} <br>
                    <abbr title="Deskripsi Event">Deskripsi Acara:</abbr> {{ $address->detail_event }} <br>
                    <abbr title="Tanggal Event">Tanggal Acara:</abbr> {{ $address->date_event }}
                    </address>
                </div>
            </div>
            @endforeach
            <div class="row">
                <div class="col-md-1">
                    <label>
                        {!! Form::radio('address_id', 'new-address', null) !!}
                    </label>
                </div>
                <div class="col-md-11">
                    <strong>Alamat Baru dan Acara Baru</strong>
                </div>
            </div>
            <div class="row">
                {!! $errors->first('address_id', '<p class="help-block">:message</p>') !!}
            </div>
        </div>
    </div>
    <div id="js-new-address">
            @include('checkout._address-field')
    </div>
    <div class="form-group">
        <div class="col-md-6 col-md-offset-4">
            {!! Form::button('Lanjut <i class="fa fa-arrow-right"></i>', array('type'=>'submit', 'class'=>'btn btn-primary')) !!}
        </div>
    </div>
{!! Form::close() !!}
