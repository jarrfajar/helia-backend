<?php

namespace App\Http\Controllers;

use App\Models\Room;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class BookmarController extends Controller
{
    public function index()
    {
        $myFavorites = Auth::user()->bookmars;
        
        return response()->json([
            'data' => $myFavorites,
        ]);
    }

    public function bookmar(Room $room)
    {
        Auth::user()->bookmars()->attach($room->id);

        return response()->json([
            'message' => 'bookmar berhasil',
        ]);
    }

    public function unbookmar(Room $room)
    {
        Auth::user()->bookmars()->detach($room->id);

        return response()->json([
            'message' => 'unbookmar berhasil',
        ]);
    }
}
