<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

use App\Models\Product as Product;
use App\Models\Photo as Photo;

class OrderProduct extends Model
{
    protected $table = 'crm_orderproduct';
    protected $primaryKey = 'id_orderproduct';
    public $timeStamps = false;

    public function product()
    {
        return $this->hasOne(Product::class, 'id_product', 'id_product');
    }

}