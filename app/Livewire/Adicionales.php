<?php

namespace App\Livewire;

date_default_timezone_set('America/Argentina/Buenos_Aires');

use Livewire\Component;
use App\Models\Departamento;
use App\Models\Localidade;
use App\Models\Clube;
use App\Models\Estado;
use App\Models\Sexo;
use App\Models\Tipo;

class Adicionales extends Component
{
    // Variables de INSERT
    public $tipo_entidad;
    public $departamento_tabla;
    public $nombre_club;
    public $acronimo_club;
    public $localidades_a_cargar;
    public $departamento_elegido;
    public $club_y_acronimo;

    public $nombre_sexo;
    public $acronimo_sexo;

    public $nombre_estado;

    //Variables de consulta
    public $consulta;
    public $departamentos;
    public $cantDepartamentos;
    public $cantLocalidades;
    public $cantClubes;

    public function render()
    {
        $this->cantDepartamentos = Departamento::all()->count();
        $this->cantLocalidades = Localidade::all()->count();
        $this->cantClubes = Clube::all()->count();
        $this->departamentos = Departamento::orderby('nombre', 'asc')->get();
        return view('livewire.adicionales');
    }

    public function guardarSexo()
    {
        $sexo = new Sexo();
        $sexo->nombre = $this->nombre_sexo;
        $sexo->acronimo = $this->acronimo_sexo;
        $sexo->save();

        $this->nombre_sexo = "";
        $this->acronimo_sexo = "";
    }

    public function guardarDepartamento()
    {
        $departamento = new Departamento();
        $departamento->nombre = $this->departamento_tabla;
        $departamento->save();

        $this->departamento_tabla = "";
    }

    public function cargarLocalidades()
    {
        //Lo que hago es reventar los datos que vienen del textarea con '\n' (ENTER) de separador
        $datos =  explode("\n", $this->localidades_a_cargar);
        //recorro todas las posiciones del array que se formo
        for ($c = 0; $c < count($datos); $c++) {
            //... y por cada vuelta creo un objeto localidade
            $localidad = new Localidade();
            //asigno los valores que vienen del formulario
            $localidad->departamento_id = $this->departamento_elegido;
            $localidad->nombre = $datos[$c];
            //y hago el INSERT del registro
            $localidad->save();
        }
        $this->localidades_a_cargar = "";
    }

    public function guardarTipo()
    {
        //Checkeo si dividieron la inicial y el nombre con #
        if (strpos($this->tipo_entidad, '#') !== false) {
            $datos = explode('#', $this->tipo_entidad);

            $tipo = new Tipo();
            $tipo->nombre = $datos[0];
            $tipo->codigo = $datos[1];
            $tipo->save();

            $this->tipo_entidad = "";
        } else {
            $this->tipo_entidad = $this->tipo_entidad . '# [falta]';
        }
    }

    public function guardarEstado()
    {
        //Checkeo si dividieron la inicial y el nombre con #
        if (strpos($this->nombre_estado, '#') !== false) {
            $datos = explode('#', $this->nombre_estado);

            $estado = new Estado();
            $estado->nombre = $datos[0];
            $estado->acronimo = $datos[1];
            $estado->save();

            $this->nombre_estado = "";
        } else {
            $this->nombre_estado = $this->nombre_estado . '# [falta]';
        }
    }

    public function guardarClub()
    {
        $club = new Clube();
        $club->codigo = $this->acronimo_club;
        $club->nombre = $this->nombre_club;
        $club->save();

        $this->nombre_club = "";
        $this->acronimo_club = "";
    }

    public function guardarClubes()
    {
        //Lo que hago es reventar los datos que vienen del textarea con '\n' (ENTER) de separador
        $datos =  explode("\n", $this->club_y_acronimo);
        //recorro todas las posiciones del array que se formo
        for ($c = 0; $c < count($datos); $c++) {
            //vuelvo a separar el contenio de la posicion del vector con #
            $dato = explode('#', $datos[$c]);
            $club = new Clube();
            //asigno los valores que vienen del formulario
            $club->codigo = $dato[0];
            $club->nombre = $dato[1];
            //y hago el INSERT del registro
            $club->save();
        }
        $this->club_y_acronimo = "";
    }
}
