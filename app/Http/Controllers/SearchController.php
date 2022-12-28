<?php

namespace App\Http\Controllers;

use App\Models\Room;
use Illuminate\Http\Request;

class SearchController extends Controller
{
    public function __invoke(Request $request)
    {
        $room = Room::where('title','like',"%".$request->title."%")->get();

        return response()->json([
            'data' => $room,
        ]);
    }
}
