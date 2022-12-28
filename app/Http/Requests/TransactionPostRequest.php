<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Http\Exceptions\HttpResponseException;
use Illuminate\Contracts\Validation\Validator;

class TransactionPostRequest extends FormRequest
{
    public function authorize()
    {
        return true;
    }
    
    public function rules()
    {
        return [
            // 'invoice' => 'required',
            'room_id' => 'required',
            'category_id' => 'required',
            'user_id' => 'required',
            'phone' => 'required',
            'checkin' => 'required',
            'checkout' => 'required',
            'night' => 'required',
            'price' => 'required',
            'tax' => 'required',
            'total' => 'required',
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
