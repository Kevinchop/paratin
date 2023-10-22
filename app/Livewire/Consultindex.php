<?php

namespace App\Livewire;

use Livewire\Component;
use App\Models\Persona;

class Consultindex extends Component
{
    public $consulta;
    public $personas;

    public function render()
    {
        $this->personas = Persona::where('dni', 'like', '%' . $this->consulta . '%')->orderby('apellido', 'asc')->get();
        return view('livewire.consultindex');
    }
}
