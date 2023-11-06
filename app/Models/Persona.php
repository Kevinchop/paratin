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
        return $this->belongsTo(Tipo::class);
    }

    public function categoria()
    {
        return $this->belongsTo(Categoria::class);
    }

    public function departamento()
    {
        return $this->belongsTo(Departamento::class);
    }

    public function sexo()
    {
        return $this->belongsTo(Sexo::class);
    }
}
