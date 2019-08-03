<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Photo extends Model
{
    protected $table = 'CRM_PHOTO';

    protected $primaryKey = 'ID_PHOTO';

    public $timestamps = false;
}
