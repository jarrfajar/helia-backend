<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Http\Exceptions\HttpResponseException;
use Illuminate\Contracts\Validation\Validator;

class RoomPostRequest extends FormRequest
{
    public function authorize()
    {
        return true;
    }
    
    public function rules()
    {
        return [
            'image' => 'required',
            'title' => 'required|max:20|unique:rooms',
            'category_id' => 'required|max:3',
            'status' => 'required|min:3|max:10',
        ];
    }

    public function failedValidation(Validator $validator)
    {
        throw new HttpResponseException(response()->json([
            'success'   => false,
            'message'   => 'validation errors',
            'data'      => $validator->errors()
        ]));
    }
}
