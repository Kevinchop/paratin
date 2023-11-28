<?php

namespace App\Livewire;

use App\Models\Clube;
use App\Models\Departamento;
use App\Models\Estado;
use App\Models\Localidade;
use Livewire\Component;
use App\Models\Persona;
use App\Models\Sexo;
use App\Models\Tipo;

class Centralpersona extends Component
{
    protected $rules = [
        'apellido'  => 'required',
        'nombre'    => 'required',
        'dni'       => 'required',
        'fecha_nac' => 'required',
        'direccion' => 'required',
        'telefono'  => 'required',
    ];

    //Variables de INSERT
    public $dni;
    public $apellido;
    public $nombre;
    public $fecha_nac;
    public $sexo = 1; // valor por defecto
    public $direccion;
    public $departamento = 10; //id del departamento // valor por defecto
    public $localidad;
    public $telefono;
    public $club = 1; // valor por defecto
    public $matricula_nacional;
    public $matricula_provincial;
    public $anio_validez;
    public $estado;
    public $tipo = 3; //id del tipo // valor por defecto

    //Variables de UPDATE
    public $apellido_upd;
    public $nombre_upd;
    public $dni_upd;
    public $fecha_nac_upd;
    public $direccion_upd;
    public $departamento_upd; //id del departamento
    public $telefono_upd;
    public $matricula_upd;
    public $tipo_upd; //id del tipo

    //Variables de consulta
    public $consulta = "--";
    public $cantPersonas;
    public $personas;
    public $tipos;
    public $sexos;
    public $clubes;
    public $estados;
    public $departamentos;
    public $localidades;

    public $editing_id;

    public function render()
    {
        $this->cantPersonas = Persona::count();
        $this->tipos = Tipo::orderby('nombre', 'asc')->get();
        $this->departamentos = Departamento::orderby('nombre', 'asc')->get();
        $this->sexos =Sexo::all();
        $this->estados = Estado::all();
        $this->clubes = Clube::orderby('nombre', 'asc')->get();
        $this->localidades = Localidade::where('departamento_id', '=', $this->departamento)->get();
        $this->personas = Persona::where('dni', 'like', '%' . $this->consulta . '%')->orderby('apellido', 'asc')->get();
        return view('livewire.centralpersona');
    }

    // dni
    // apellido
    // nombre
    // fecha_nac
    // sexo_id -- valor por defecto
    // direccion
    // departamento_id -- valor por defecto
    // localidade_id -- valor por defecto
    // telefono
    // clube_id -- valor por defecto
    // matricula_nac
    // matricula_prov
    // anio
    // estado_id -- valor por defecto
    // tipo_id -- valor por defecto
    // imagen

    public function guardarPersona()
    {
        $this->validate();

        $persona = new Persona();

        $persona->dni = $this->dni;
        $persona->apellido = $this->apellido;
        $persona->nombre = $this->nombre;
        $persona->fecha_nac = $this->fecha_nac;
        $persona->sexo_id = $this->sexo;
        $persona->direccion = $this->direccion;
        $persona->departamento_id = $this->departamento;
        $persona->localidade_id = $this->localidad;
        $persona->telefono = $this->telefono;
        $persona->clube_id = $this->club;
        $persona->matricula_nac = $this->matricula_nacional;
        $persona->matricula_prov = $this->matricula_provincial;
        $persona->anio = $this->anio_validez;
        $persona->estado_id = $this->estado;
        $persona->tipo_id = $this->tipo;
        $persona->save();

        $this->reset();
    }



    public function editClose()
    {
        $this->editing_id = null;
    }

    public function editing(Persona $persona)
    {
        //$persona es una collection (array de objetos), cada registro es un objeto
        $this->editing_id = $persona->id;
        $this->apellido_upd = $persona->nombre;
        $this->nombre_upd = $persona->lenguaje_id;
        $this->tipo_upd = $persona->etiqueta;
        $this->dni_upd = $persona->desarrollo;
    }

    public function update(persona $persona)
    {
        $persona->update([
            'nombre' => $this->nombre_persona_upd,
            'lenguaje_id' => $this->lenguaje_persona_upd,
            'etiqueta' => $this->etiqueta_persona_upd,
            'desarrollo' => $this->desarrollo_persona_upd
        ]);
        $this->editClose();
    }

}
