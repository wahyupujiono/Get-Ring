<?php

return [

	/*
    |--------------------------------------------------------------------------
    | End Point Api ( Konfigurasi Server Akun )
    |--------------------------------------------------------------------------
    |
    | Starter : http://api.rajaongkir.com/starter
    | Basic : http://api.rajaongkir.com/basic
    | Pro : http://pro.rajaongkir.com/api
    |
    */

	'end_point_api' => env('RAJAONGKIR_ENDPOINTAPI', 'http://api.rajaongkir.com/starter'),

	/*
    |--------------------------------------------------------------------------
    | Api key
    |--------------------------------------------------------------------------
    |
    | Isi dengan api key yang didapatkan dari rajaongkir
    |
    */

	'api_key' => env('RAJAONGKIR_APIKEY', '0ec1a6b951e6c7c3749a5e036f2826fe'),
    'fallback_fee'=>env('RAJAONGKIR_FALLBACK_FEE', 0),
    'origin'=>env('RAJAONGKIR_REGENCY_ORIGIN', 3), //KOTA CILEGON
    'courier'=>env('RAJAONGKIR_COURIER','jne'),
    'service'=>env('RAJAONGKIR_SERVICE', 'REG')
];
