<?php

namespace App\Livewire;

use Livewire\Component;
use App\Models\Departamento;
use App\Models\Tipo;
use App\Models\Categoria;

class Adicionales extends Component
{
    // Variables de INSERT
    public $categoria_tabla;
    public $tipo_tabla;
    public $departamento_tabla;

    //Variables de consulta
    public $consulta;
    public $departamentos;

    public function render()
    {
        $this->departamentos = Departamento::orderby('nombre', 'asc')->get();
        return view('livewire.adicionales');
    }

    public function guardarLocalidad()
    {
        $localidad;
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
}
