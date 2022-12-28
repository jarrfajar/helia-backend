<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class RoomResource extends JsonResource
{
    public $status;
    public $message;

    public function __construct($status, $message, $resource)
    {
        parent::__construct($resource);
        $this->status  = $status;
        $this->message = $message;
    }

    
    public function toArray($request)
    {
        return parent::toArray($request);
    }
}
