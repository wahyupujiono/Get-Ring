<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

use App\Http\Controllers\Controller;
use Symfony\Component\HttpFoundation\file\UploadedFile;
use File;
use App\Order;

class CustomerOrdersController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
        $this->middleware('role:customer');
    }

    public function deletePhoto($filename)
    {
        $path = public_path().DIRECTORY_SEPARATOR. 'img'. DIRECTORY_SEPARATOR. 'bukti-pembayaran' .DIRECTORY_SEPARATOR. $filename;
    }

    protected function savePhoto(UploadedFile $photo)
    {
        $filename = str_random(40). '.'. $photo->guessClientExtension();
        $destentionPath = public_path().DIRECTORY_SEPARATOR.'img'.DIRECTORY_SEPARATOR.'bukti-pembayaran';
        $photo->move($destentionPath, $filename);

        return $filename;
    }

    public function index(Request $request)
    {
        $q = $request->get('q');
        $status = $request->get('status');
        $orders = auth()->user()->orders()
        ->where('id', 'LIKE', '%'.$q.'%')
        ->where('status', 'LIKE', '%'.$status.'%')
        ->orderBy('updated_at')
        ->paginate(5);

        return view('customer.view-orders')->with(compact('orders', 'q', 'status'));
    }

    public function edit($id)
    {
        $order = Order::find($id);
        return view('customer.edit')->with(compact('order'));
    }

    public function update(Request $request, $id)
    {
        $order = Order::find($id);

        $this->validate($request, [
            'photo'=>'mimes:jpeg,jpg,png|max:10240'
        ]);

        if ($request->hasFile('photo'))
        {
            $data['photo'] = $this->savePhoto($request->file('photo'));
            if ($order->photo !== '') $this->deletePhoto($order->photo);
        }

        $order->update($data);
        \Flash::success($order->padded_id.' Berhasil Tersimpan');

        return redirect()->route('customer-orders.index');
    }
}
