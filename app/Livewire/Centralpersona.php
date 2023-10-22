<?php

namespace App\Livewire;

use Livewire\Component;
use App\Models\Persona;
use App\Models\Tipo;

class Centralpersona extends Component
{
    //Variables de INSERT
    public $apellido;
    public $nombre;
    public $dni;
    public $fecha_nac;
    public $direccion;
    public $telefono;
    public $categoria;
    public $tipo;

    //Variables de UPDATE
    public $apellido_upd;
    public $nombre_upd;
    public $dni_upd;
    public $fecha_nac_upd;
    public $direccion_upd;
    public $telefono_upd;
    public $categoria_upd;
    public $tipo_upd;

    //Variables de consulta
    public $consulta;
    public $cantPersonas;
    public $personas;
    public $tipos;

    public $editing_id;

    public function render()
    {
        $this->cantPersonas = Persona::count();
        $this->tipos = Tipo::orderby('nombre', 'asc')->get();
        $this->personas = Persona::where('dni', 'like', '%' . $this->consulta . '%')->orderby('apellido', 'asc')->get();
        return view('livewire.centralpersona');
    }

    public function guardarPersona()
    {
        $this->validate();

        $persona = new Persona();

        $persona->nombre = $this->nombre_fuente;
        $persona->lenguaje_id = $this->lenguaje_a_usar;
        $persona->etiqueta = $this->etiqueta_fuente;
        $persona->desarrollo = $this->desarrollo_fuente;
        $persona->save();

        $this->reset();
    }

}
