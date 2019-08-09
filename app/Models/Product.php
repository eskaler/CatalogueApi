<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

use App\Models\Category;
use App\Models\Photo;

class Product extends Model
{
    protected $table = 'crm_product';

    const CREATED_AT = 'd_created';
    const UPDATED_AT = 'd_edited';

    protected $fillable = [
        'id'
    ];

    public function photos()
    {
        return $this->hasMany(Photo::class, 'id_product', 'id');
    }

    public function category()
    {
        return $this->hasOne(Category::class, 'id', 'id_category');
    }

}
