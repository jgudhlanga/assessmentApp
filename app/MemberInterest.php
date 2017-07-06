<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class MemberInterest extends Model
{
    protected $fillable = ['interest_id', 'member_id'];
    
    public function interest(){
        return $this->belongsTo('App\Interest');
    }
}
