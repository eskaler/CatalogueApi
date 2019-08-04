<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

use App\Models\OrderState as OrderState;
use App\Models\OrderProduct as OrderProduct;

class Order extends Model
{
    protected $table = 'crm_order';
    protected $primaryKey = 'id_order';
    const CREATED_AT = 'd_created';

    public function state()
    {
        return $this->hasOne(OrderState::class, 'id_orderstate', 'id_orderstate');
    }
    
    public function products()
    {
        return $this->hasMany(OrderProduct::class, 'id_order', 'id_order');
    }
}
