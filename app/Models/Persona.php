<?php

namespace App\Models;

date_default_timezone_set('America/Argentina/Buenos_Aires');

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

    public function departamento()
    {
        return $this->belongsTo(Departamento::class);
    }

     public function localidad()
    {
        return $this->belongsTo(Localidade::class);
    }

    public function sexo()
    {
        return $this->belongsTo(Sexo::class);
    }

    public function club()
    {
        return $this->belongsTo(Clube::class);
    }

    public function estado()
    {
        return $this->belongsTo(Estado::class);
    }
}
