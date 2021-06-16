<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Parameter extends Model
{
    protected $fillable = [
        'test_id','parameter_name','unit','min_range','max_range',
    ];

}
