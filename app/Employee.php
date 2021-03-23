<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Employee extends Model
{
    public $table = "employees";
    protected $fillable = [
        'firstname', 
        'lastname',
        'email', 
        'phone',
        'company'
    ];

    public function company(){
        return $this->belongsTo('App\Company','company','id');
    }
}