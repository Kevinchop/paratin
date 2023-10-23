<?php

namespace App\Livewire;

use App\Models\Departamento;
use Livewire\Component;
use App\Models\Persona;
use App\Models\Tipo;
use App\Models\Categoria;

class Centralpersona extends Component
{
    protected $rules = [
        'apellido' => 'required',
        'nombre' => 'required',
        'dni' => 'required',
        'fecha_nac' => 'required',
        'direccion' => 'required',
        'telefono' => 'required',
        'matricula' => 'required'
    ];

    //Variables de INSERT
    public $apellido;
    public $nombre;
    public $dni;
    public $fecha_nac;
    public $direccion;
    public $departamento; //id del departamento
    public $telefono;
    public $categoria; //id de la categoria
    public $matricula;
    public $tipo; //id del tipo

    public $categoria_tabla;
    public $tipo_tabla;
    public $departamento_tabla;

    //Variables de UPDATE
    public $apellido_upd;
    public $nombre_upd;
    public $dni_upd;
    public $fecha_nac_upd;
    public $direccion_upd;
    public $departamento_upd; //id del departamento
    public $telefono_upd;
    public $categoria_upd; //id de la categoria
    public $matricula_upd;
    public $tipo_upd; //id del tipo

    //Variables de consulta
    public $consulta;
    public $cantPersonas;
    public $personas;
    public $tipos;
    public $departamentos;
    public $categorias;

    public $editing_id;

    public function render()
    {
        $this->cantPersonas = Persona::count();
        $this->tipos = Tipo::orderby('nombre', 'asc')->get();
        $this->departamentos = Departamento::orderby('nombre', 'asc')->get();
        $this->categorias = Categoria::orderby('nombre', 'asc')->get();
        $this->personas = Persona::where('dni', 'like', '%' . $this->consulta . '%')->orderby('apellido', 'asc')->get();
        return view('livewire.centralpersona');
    }

    public function guardarPersona()
    {
        $this->validate();

        $persona = new Persona();

        $persona->apellido = $this->apellido;
        $persona->nombre = $this->nombre;
        $persona->dni = $this->dni;
        $persona->fecha_nac = $this->fecha_nac;
        $persona->direccion = $this->direccion;
        $persona->departamento_id = $this->departamento;
        $persona->telefono = $this->telefono;
        $persona->categoria_id = $this->categoria;
        $persona->matricula = $this->matricula;
        $persona->tipo_id = $this->tipo;
        $persona->save();

        $this->reset();
    }

    public function guardarDepartamento()
    {
        $departamento = new Departamento();
        $departamento->nombre = $this->departamento_tabla;
        $departamento->save();

        $this->departamento_tabla = "";
    }

    public function guardarTipo()
    {
        $tipo = new Tipo();
        $tipo->nombre = $this->tipo_tabla;
        $tipo->save();

        $this->tipo_tabla = "";
    }

    public function guardarCategoria()
    {
        $categoria = new Categoria();
        $categoria->nombre = $this->categoria_tabla;
        $categoria->save();

        $this->categoria_tabla = "";
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
