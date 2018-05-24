<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

use App\Http\Controllers\Controller;

use App\Order;

class VendorOrdersController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
        $this->middleware('role:vendor');
    }

    public function index(Request $request)
    {
        $status = $request->get('status');
        //$orders = auth()->user()->orders()
        $orders = order()->auth()->user()
        ->where('status', 'LIKE', '%'.$status.'%');
        //$orders = Order::where('status', 'LIKE', '%'.$status.'%');
        if ($request->has('q')) {
            $q = $request->get('q');
            $orders = $orders->where(function($query) use ($q) {
                $query->where('id', $q)
                ->orWhereHas('user', function($user) use ($q) {
                    $user->where('name', 'LIKE', '%'.$q.'%');
                });
            });
        }
        //dd($orders->toSql());
        $orders = $orders->orderBy( 'updated_at', 'desc')->paginate(5);
        return view('vendor.orders.index', compact('orders', 'status', 'q'));
    }

    public function edit($id)
    {
        $order = Order::find($id);
        return view('vendor.orders.edit')->with(compact('order'));
    }

    public function update(Request $request, $id)
    {
        $order = Order::find($id);
        $this->validate($request, [
            'status'=>'required|in:'. implode(',',Order::allowedStatus())
        ]);

        $order->update($request->only('status'));
        \Flash::success($order->padded_id.' Berhasil Tersimpan');

        return redirect()->route('vendor-orders.index');
    }
}
