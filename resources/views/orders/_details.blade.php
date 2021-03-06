<table class="table table-condensed">
    <thead>
        <tr>
            <th style="width:50%">Menu Catering</th>
            <th style="width:20%">Jumlah</th>
            <th style="width:30%">Harga</th>
        </tr>
    </thead>
    <tbody>
    @foreach($order->details as $detail)
        <tr>
            <td data-th="Menu Catering">{{$detail->product->name}}</td>
            <td data-th="Jumlah" class="text-center">{{$detail->quantity}}</td>
            <td data-th="Harga" class="text-right">Rp{{number_format($detail->price)}}</td>
        </tr>
        <tr>
            <td data-th="Subtotal">Subtotal</td>
            <td data-th="Subtotal" class="text-right" colspan="2">Rp{{number_format($detail->total_price)}}</td>
        </tr>
        @endforeach
<!--        <tr>
            <td data-th="Subtotal"><strong>Biaya Administrasi</strong></td>
            <td data-th="Subtotal" class="text-right" colspan="2">Rp{{ number_format($detail->total_fee) }}</td>
        </tr>-->
        <tr>
            <td><strong>Total</strong></td>
            <td class="text-right" colspan="2"><strong>Rp{{ number_format($order->total_payment) }}</strong></td>
        </tr>

        <tr>
            <td><strong>Vendor</strong></td>
            <td class="text-right" colspan="2"><strong>{{ $detail->product->vendor }}</strong></td>
        </tr>

    </tbody>
</table>
