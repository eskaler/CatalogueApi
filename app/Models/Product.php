<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

use App\Models\ProductType as ProductType;
use App\Models\Photo as Photo;

class Product extends Model
{
    protected $table = 'crm_product';
    protected $primaryKey = 'id_product';
    const CREATED_AT = 'd_created';
    const UPDATED_AT = 'd_edited';

    public function photos()
    {
        return $this->hasMany(Photo::class, 'id_product');
    }

    public function productType()
    {
        return $this->hasOne(ProductType::class, 'id_producttype', 'id_producttype');
    }

}
