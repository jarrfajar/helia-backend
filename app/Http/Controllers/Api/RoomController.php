<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\RoomPostRequest;
use App\Http\Resources\RoomResource;
use App\Models\Rating;
use App\Models\Review;
use App\Models\Room;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;

class RoomController extends Controller
{
    public function index()
    {
        // $room = Room::with('reviews.user')->get();
        $room = Room::all();

        return new RoomResource(true, 'Data room', $room);
    }


    public function store(RoomPostRequest $request)
    {
        $image = $request->file('image');
        $image->storeAs('public/room', $image->hashName());

        $room = Room::create([
            'image' =>  'storage/room/' . $image->hashName(),
            'title' => $request->title,
            'category_id' => $request->category_id,
            'status' => $request->status,
        ]);

        return new RoomResource(true, 'Data room Berhasil Ditambahkan!', $room);
    }

    public function show(Room $room)
    {
        $id = $room->id;
        $room = Room::where('id', $id)->get();

        return new RoomResource(true, 'Data room Berhasil ditemukan!', $room);
    }

    public function update(Request $request, Room $room)
    {
        $room->update($request->all());

        return new RoomResource(true, 'Data room Berhasil diubah!', $room);
    }

    public function destroy(Room $room)
    {
        $room->delete();

        return new RoomResource(true, 'Data room Berhasil dihapus!', $room);
    }
}
