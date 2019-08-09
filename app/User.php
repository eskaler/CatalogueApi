<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use Notifiable;

    protected $table = 'crm_user';

    // /**
    //  * The attributes that are mass assignable.
    //  *
    //  * @var array
    //  */
    protected $fillable = [
        'id', 's_login', 's_token'
    ];

    // /**
    //  * The attributes that should be hidden for arrays.
    //  *
    //  * @var array
    //  */
    protected $hidden = [
        's_password', 's_token',
    ];

}
