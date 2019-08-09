<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

use App\Models\Status;
use App\Models\OrderProduct;

class Order extends Model
{
    protected $table = 'crm_order';
    const CREATED_AT = 'd_created';
    const UPDATED_AT = 'd_edited';

    protected $fillable = [
        'id'
    ];

    protected $attributes = [
        'id_status' => 1
    ];

    public function status()
    {
        return $this->hasOne(Status::class, 'id', 'id_status');
    }
    
    public function products()
    {
        return $this->hasMany(OrderProduct::class, 'id_order', 'id');
    }
}
