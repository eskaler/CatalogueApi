<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

use App\Http\Resources\OrderStatusResource;
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
            'customerName' => $this->s_customername,
            'customerPhone' => $this->s_customerphone,
            'createdAt' => $this->d_created,
            'expiresAt' => $this->d_expires,
            'state' => new OrderStatusResource($this->state),
            'products' => OrderProductResource::collection($this->products)
        ];
    }
}
