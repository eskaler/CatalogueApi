<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;
use \App\Http\Resources\Photo as PhotoResource;
use \App\Http\Resources\ProductType as ProductTypeResource;

class Product extends JsonResource
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
            'id' => $this->id_product,
            'name' => $this->s_name,
            'caption' => $this->s_caption,
            'description' => $this->s_description,
            'quantity' => $this->n_qty,
            'price' => $this->f_price,
            'createdAt' => $this->d_created,
            'updatedAt' => $this->d_updated,
            'createdBy' => $this->id_createdby,
            'updatedBy' => $this->id_updatedby,
            
            'photos' => PhotoResource::collection($this->photos),
            'productType' => new ProductTypeResource($this->productType)
        ];
     //   return parent::toArray($request);
    }
}
