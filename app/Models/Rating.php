<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Rating extends Model
{
    use HasFactory;
    protected $guarded = [];

    // public function Reviews()
    // {
    //     return $this->hasMany(Review::class);
    // }
}
