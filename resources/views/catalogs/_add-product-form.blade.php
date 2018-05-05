<p>
    {!! Form::open(['url'=>'cart', 'method'=>'post', 'class'=>'form-inline']) !!}
        {!! Form::hidden('product_id', $product->id) !!}

        <div class="form-group">
            {!! Form::number('quantity', null, ['class'=>'form-control', 'min'=>1, 'placeholder'=> 'Jumlah Order']) !!}
        </div>
        {!! Form::submit('Tambah Ke Cart', ['class'=>'btn btn-primary']) !!}
    {!! Form::close() !!}

</p>
