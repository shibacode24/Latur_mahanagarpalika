<?php

namespace App\Models\Masters;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Year extends Model
{
    use HasFactory;
    protected $table="years";
    protected $fillable=['year'];
}
