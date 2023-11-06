<div>
    {{-- Carga de items especiales --}}
    <div class="row">
        <div class="col-md-4">
            <div class="card">
                <div class="card-body">
                    <div class="form-row">
                        <input class="form-control col-sm-10" type="text" placeholder="[Departamento]: Ej.: Parana"
                            wire:model='departamento_tabla'>
                        <button class="btn btn-success col-sm-2" wire:click='guardarDepartamento'>OK</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card">
                <div class="card-body">
                    <div class="form-row">
                        <input class="form-control col-sm-10" type="text"
                            placeholder="[Tipo de Matricula]: Ej.: Nacional" wire:model='tipo_tabla'>
                        <button class="btn btn-info col-sm-2" wire:click='guardarTipo'>OK</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card">
                <div class="card-body">
                    <div class="form-row">
                        <input class="form-control col-sm-10" type="text" placeholder="[Categoria]: Ej.: Jugador"
                            wire:model='categoria_tabla'>
                        <button class="btn btn-primary col-sm-2" wire:click='guardarCategoria'>OK</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    {{-- Cargador de Departamentos --}}
    <div class="row">
        <div class="col-md-6">
            <div class="card">
                <div class="card-header">
                    <h6>Cargador de Departamentos</h6>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <label for="">Departamentos</label>
                        <select name="" id="" class="form-control">
                            <option value="0">---</option>
                            @foreach ($departamentos as $departamento)
                                <option value="{{ $departamento->id }}">{{ $departamento->nombre }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="">Localidades</label>
                        <textarea name="" id="" cols="30" rows="5" class="form-control"></textarea>
                    </div>
                </div>
                <div class="card-footer d-flex">
                    <button class="btn btn-secondary ml-auto" wire:click='cargarLocalidades'>Cargar</button>
                </div>
            </div>
        </div>
