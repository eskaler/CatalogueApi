<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ProductType extends Model
{
    protected $table = 'CRM_PRODUCTTYPE';

    protected $primaryKey = 'ID_PRODUCTTYPE';

    public $timestamps = false;
}
