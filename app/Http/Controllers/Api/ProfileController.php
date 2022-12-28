<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\ProfilePostRequest;
use App\Http\Resources\ProfileResource;
use App\Models\Profile;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;


class ProfileController extends Controller
{
    public function index()
    {
        $user = User::where('id',auth()->user()->id)->get();
        
        return new ProfileResource(true, 'Profile!', $user);
    }

    public function store(ProfilePostRequest $request)
    {
        // 
    }

    public function show($id)
    {
        $profile = User::where('id', $id)->with('profiles')->get();

        return new ProfileResource(true, 'Profile!', $profile);
    }

    public function update(Request $request, $id)
    {
        $profile = Profile::where('user_id', $id)->firstOrFail();

        if ($request->hasFile('image')) {
            $image = $request->file('image');

            $slice = Str::after($profile->image, 'storage/user/');
            Storage::delete('public/user/' . $slice);

            $image->storeAs('public/user', $image->hashName());

            $profile->update([
                'image' =>  'storage/user/' . $image->hashName(),
            ]);
        } else {
            if ($request->name) {
               $user = User::where('id', $id)->firstOrFail();
               $user->update([
                'name' => $request->name,
               ]);
               $profile->update($request->except(['image','name']));
            }else {
                $profile->update($request->except(['image','name']));
            }
        }

        return new ProfileResource(true, 'Profile berhasil diupdate!', $profile);
    }

    public function destroy(Profile $profile)
    {
        //
    }
}
