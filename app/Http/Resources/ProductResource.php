<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

use App\Http\Resources\PhotoResource;
use App\Http\Resources\CategoryResource;

class ProductResource extends JsonResource
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
            'name' => $this->s_name,
            'caption' => $this->s_caption,
            'description' => $this->s_desc,
            'quantity' => (int)$this->n_qty,
            'price' => (float)$this->f_price,
            'created' => $this->d_created,
            'creator' => (int)$this->id_creator,
            'edited' => $this->d_edited,
            'editor' => (int)$this->id_editor,
            
            'photos' => PhotoResource::collection($this->photos),
            'category' => new CategoryResource($this->category)
        ];
    }
}
