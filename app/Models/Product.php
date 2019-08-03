<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $table = 'crm_product';

    protected $primaryKey = 'id_product';

    public $timestamps = false;

    public function photos()
    {
        return $this->hasMany(\App\Models\Photo::class, 'id_product');
    }

    public function productType()
    {
        return $this->hasOne(\App\Models\ProductType::class, 'id_producttype', 'id_producttype');
    }

}
