<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Contracts\Auth\Authenticatable;

class User extends Model implements Authenticatable
{
    //Use the trait Authenticable for Auth Mechanism
    use \Illuminate\Auth\Authenticatable;
    
    protected $fillable = ['name', 'surname','email', 'password'];
}
