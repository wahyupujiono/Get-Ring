@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-xs-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">Berhasil!</h3>
                </div>
                <div class="panel-body">
                    <p>Hi <strong>{{ session('order')->user->name }}</strong></p>
                    <p></p>
                    <p>Terima Kasih Telah Berbelanja Di <strong>Get-Ring</strong>.<br>
                    <p><strong>Silakan Screenshot Atau Foto Bukti Invoice pada layar ini.</strong><br>
                    <p></p>
                    Untuk Melakukan Pembayaran Dengan {{ config('bank-accounts')[session('order')->bank]['title'] }}</p>
                    <ol>
                        <li>Silakan transfer ke rekening <strong>{{ config('bank-accounts')[session('order')->bank]['bank'] }} {{ config('bank-accounts')[session('order')->bank]['number'] }} An. {{ config('bank-accounts')[session('order')->bank]['name'] }}</strong>.</li>
                        <li>Ketika Melakukan Pembayaran Sertakan nomor pesanan <strong>{{ session('order')->padded_id }}</strong></li>
                        <li>Total Pembayaran <strong>Rp{{ number_format(session('order')->total_payment) }}</strong></li>
                        <li>Silakan Login Jika Belum Untuk Upload Bukti Pembayaran pada Form di Bagian Menu Orders Sesuai Dengan Nomor Pesanan</li>
                        <li>Atau Kirimkan Melalui Email <strong>finance@getring.com</strong></li>
                    </ol>
                </div>
                <div class="panel-footer"><a href="/">Lanjutkan Belanja</a></div>
            </div>
        </div>
    </div>
</div>
@endsection
