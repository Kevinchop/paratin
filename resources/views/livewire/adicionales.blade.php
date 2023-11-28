<div>
    {{-- Carga de items especiales --}}
    <div class="row">
        <div class="col-md-3">
            <div class="card">
                <div class="card-body">
                    <div class="form-row">
                        <input class="form-control col-sm-10" type="text" placeholder="[Dpto]: Ej.: Parana"
                            wire:model='departamento_tabla'>
                        <button class="btn btn-success col-sm-2" wire:click='guardarDepartamento'>OK</button>
                    </div>
                </div>
            </div>
        </div>
        {{-- <div class="col-md-5">
            <div class="card">
                <div class="card-body">
                    <div class="form-row">
                        <input type="text" class="form-control col-sm-4" placeholder="Acronimo: Ej: AEC" wire:model='acronimo_club'>
                        <input class="form-control col-sm-6" type="text" placeholder="[Clubes]: Ej.: Atletico Echagüe Club"
                            wire:model='nombre_club'>
                        <button class="btn btn-info col-sm-2" wire:click='guardarClub'>OK</button>
                    </div>
                </div>
            </div>
        </div> --}}
        {{-- <div class="col-md-5">
            <div class="card">
                <div class="card-body">
                    <div class="form-row">
                        <input class="form-control col-sm-6" type="text" placeholder="[Sexos]: Ej.: Masculino"
                            wire:model='nombre_sexo'>
                        <input type="text" class="form-control col-sm-4" placeholder="Acronimo: Ej: M" wire:model='acronimo_sexo'>
                        <button class="btn btn-info col-sm-2" wire:click='guardarSexo'>OK</button>
                    </div>
                </div>
            </div>
        </div> --}}
        {{-- <div class="col-md-4">
            <div class="card">
                <div class="card-body">
                    <div class="form-row">
                        <input class="form-control col-sm-10" type="text" placeholder="[Tipo#Codigo]: Ej.: Deportista#D"
                            wire:model='tipo_entidad'>
                        <button class="btn btn-primary col-sm-2" wire:click='guardarTipo'>OK</button>
                    </div>
                </div>
            </div>
        </div> --}}

        <div class="col-md-4">
            <div class="card">
                <div class="card-body">
                    <div class="form-row">
                        <input class="form-control col-sm-10" type="text" placeholder="[Estado#Acronimo]: Ej.: Vigente#V"
                            wire:model='nombre_estado'>
                        <button class="btn btn-primary col-sm-2" wire:click='guardarEstado'>OK</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    {{-- Cargador de Localidades --}}
    <div class="row">
        <div class="col-md-6">
            <div class="card">
                <div class="card-header">
                    <h5>Cargador de Localidades ({{ $cantLocalidades }})</h5>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <label for="">Departamentos</label>
                        <select name="" id="" class="form-control" wire:model='departamento_elegido'>
                            <option value="0">---</option>
                            @foreach ($departamentos as $departamento)
                                <option value="{{ $departamento->id }}">{{ $departamento->nombre }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="">Localidades</label>
                        <textarea name="" id="" cols="30" rows="5" class="form-control" wire:model='localidades_a_cargar'></textarea>
                    </div>
                </div>
                <div class="card-footer d-flex">
                    <button class="btn btn-secondary ml-auto" wire:click='cargarLocalidades'>Cargar</button>
                </div>
            </div>
        </div>

        {{-- Cargador de Clubes --}}
        <div class="col-md-6">
            <div class="card">
                <div class="card-header">
                    <h5>Cargador de Clubes ({{ $cantClubes }})</h5>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <label for="">Acronimo#Club</label>
                        <textarea name="" id="" cols="30" rows="8" class="form-control" wire:model='club_y_acronimo' placeholder="Lista de Acronimo#Club..."></textarea>
                    </div>
                </div>
                <div class="card-footer d-flex">
                    <button class="btn btn-secondary ml-auto" wire:click='guardarClubes'>Guardar</button>
                </div>
            </div>
        </div>
    </div>
