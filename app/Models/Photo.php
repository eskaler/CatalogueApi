<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Photo extends Model
{
    protected $table = 'crm_photo';

    public $timestamps = false;
    
    protected $fillable = [
        'id'
    ];

}
