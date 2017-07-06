<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Member extends Model
{
    protected $fillable = ['name', 'surname', 'idNumber', 'birthDate', 'languageId'];
    
    //Interests
    public function memberInterests(){
        return $this->hasMany('App\MemberInterest');
    }
    //add interests
    public function addInterest(MemberInterest $interest)
    {
        return $this->memberInterests()->save($interest);
    }
    
    
    //Delete wcih also delete member interests from member interest table
    public function delete()
    {
        $this->memberInterests()->delete();
        Parent::delete();
    }
}
