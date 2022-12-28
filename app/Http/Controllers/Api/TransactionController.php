<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\TransactionPostRequest;
use App\Http\Resources\TransactionResource;
use App\Models\Transaction;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class TransactionController extends Controller
{
    public function index()
    {
        $room = Transaction::with('room', 'user')->where('user_id', Auth::id())->get();
        return new TransactionResource(true, 'Transaction Berhasil Ditambahkan!', $room);
    }
    public function store(TransactionPostRequest $request)
    {
        $invoice = 'INVOICE' . '-' . date('Ymd') . '-' . str_pad(Transaction::count() + 1, 4, '0', STR_PAD_LEFT);

        $room = Transaction::create([
            'invoice' => $invoice,
            'room_id' => $request->room_id,
            'category_id' => $request->category_id,
            'user_id' => $request->user_id,
            'phone' => $request->phone,
            'checkin' => $request->checkin,
            'checkout' => $request->checkout,
            'night' => $request->night,
            'price' => $request->price,
            'tax' => $request->tax,
            'total' => $request->total,
            'status' => $request->status,
        ]);

        return new TransactionResource(true, 'Transaction Berhasil Ditambahkan!', $room);
    }

    public function show(Transaction $transaction)
    {
        $id = $transaction->id;
        $transaction = Transaction::where('id', $id)->with('room','user')->get();

        return new TransactionResource(true, 'transaction Berhasil ditemukan!', $transaction);
    }

    public function update(Request $request,Transaction $transaction)
    {
        $transaction->update([
            'status' => $request->status,
        ]);

        return new TransactionResource(true, 'Data transaction Berhasil diubah!', $transaction);
    }

    public function recent()
    {
        $transaction = Transaction::with('room')->where('status', 'completed')->orderBy('updated_at', 'DESC')->get()->unique('room_id');

        return new TransactionResource(true, 'Recent transaction', $transaction);
    }
}
