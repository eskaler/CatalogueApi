<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

use App\Http\Resources\OrderState as OrderStateResource;
use App\Http\Resources\OrderProduct as OrderProduct;

class Order extends JsonResource
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
            'id' => $this->id_order,
            'customerName' => $this->s_customername,
            'customerPhone' => $this->s_customerphone,
            'createdAt' => $this->d_created,
            'expiresAt' => $this->d_expires,
            'state' => new OrderStateResource($this->state),
            'products' => OrderProduct::collection($this->products)
        ];
    }
}
