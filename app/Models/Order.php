<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

use App\Models\Status;
use App\Models\OrderProduct;

class Order extends Model
{
    protected $table = 'crm_order';
    const CREATED_AT = 'd_created';

    public function state()
    {
        return $this->hasOne(Status::class, 'id_status', 'id');
    }
    
    public function products()
    {
        return $this->hasMany(OrderProduct::class, 'id_order', 'id');
    }
}
