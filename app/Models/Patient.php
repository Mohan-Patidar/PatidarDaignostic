<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Patient extends Model
{
    protected $fillable = [
        'prefix','first_name','middle_name','last_name','gender','age','contact','address','patient_id','email',
    ];

}
