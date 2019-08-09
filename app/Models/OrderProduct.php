<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

use App\Models\Product;
use App\Models\Photo;

class OrderProduct extends Model
{
    protected $table = 'crm_ordr_pdct';
    public $timeStamps = false;

    public function product()
    {
        return $this->hasOne(Product::class, 'id_product', 'id');
    }

}