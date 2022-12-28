<?php

use App\Http\Controllers\API\AuthController;
use App\Http\Controllers\Api\CategoryController;
use App\Http\Controllers\Api\ProfileController;
use App\Http\Controllers\Api\RoomController;
use App\Http\Controllers\Api\TransactionController;
use App\Http\Controllers\BookmarController;
use App\Http\Controllers\SearchController;
use App\Models\Transaction;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

//API route for register new user
Route::post('/register', [AuthController::class, 'register']);
//API route for login user
Route::post('/login', [AuthController::class, 'login']);

Route::group(['middleware' => ['auth:sanctum']], function () {
    // LOGOUT
    Route::post('/logout', [AuthController::class, 'logout']);
    // CATEGORY
    Route::apiResource('/category', CategoryController::class);
    // ROOM
    Route::apiResource('/room', RoomController::class);
    // Route::get('/review/{id}',[RoomController::class,'review']);

    // TRANSACTION
    Route::apiResource('/transaction', TransactionController::class);
    Route::get('/recentBooking',[TransactionController::class,'recent']);
    // PROFILE
    Route::apiResource('/profile', ProfileController::class)->parameters([
        'profiles' => 'user_id',
    ]);
    // SEARCH   
    Route::post('/search', SearchController::class);
    // BOOKMAR
    Route::get('/bookmars', [BookmarController::class, 'index']);
    Route::post('bookmar/{room}', [BookmarController::class, 'bookmar']);
    Route::post('unbookmar/{room}', [BookmarController::class, 'unbookmar']);
});


Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
