<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Persona extends Model
{
    protected $guarded = [
        'id'
    ];

    use HasFactory;

    public function tipo()
    {
        $this->belongsTo(Tipo::class);
    }

    public function categoria()
    {
        $this->belongsTo(Categoria::class);
    }
}
