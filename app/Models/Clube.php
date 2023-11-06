<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Clube extends Model
{
    protected $guarded = [
        'id'
    ];
    use HasFactory;

    public function persona()
    {
        return $this->hasMany(Persona::class);
    }
}
