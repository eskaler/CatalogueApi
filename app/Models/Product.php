<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $table = 'CRM_PRODUCT';

    protected $primaryKey = 'ID_PRODUCT';

    public $timestamps = false;
}
