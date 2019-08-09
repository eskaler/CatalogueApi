<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

use App\Http\Resources\StatusResource;
use App\Http\Resources\OrderProduct;

class OrderResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'customerName' => $this->s_customer_name,
            'customerPhone' => $this->s_customer_phone,
            'createdAt' => $this->d_created,
            'expiresAt' => $this->d_expires,
            'status' => new StatusResource($this->status),
            'products' => OrderProductResource::collection($this->products)
        ];
    }
}
