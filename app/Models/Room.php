<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;

class Room extends Model
{
    use HasFactory;
    protected $guarded = [];

    // protected $with = ['category','bookmar','reviews.user'];
    protected $with = ['category','bookmar','reviews.user'];

    public function category()
    {
        return $this->belongsTo(Category::class);
    }

    public function reviews()
    {
        return $this->hasMany(Review::class);
    }

    public function transactions()
    {
        return $this->hasMany(transactions::class);
    }

    public function bookmar()
    {
        $userId = Auth::user() ? Auth::user()->id : $this->id;
        return $this->hasMany(bookmar::class)->where('user_id', $userId);
    }

}
