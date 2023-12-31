<div>
    {{-- Formulario de carga de personas --}}
    <div class="row">
        <div class="col-md-12">
            <div class="card pos-f-t">
                <!-- El NAVDARK va primero para que el contenido se desplegue hacia abajo -->
                <nav class="navbar navbar-dark bg-gradient-secondary">
                    <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarToggleExternalContent" aria-controls="navbarToggleExternalContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                        <!-- <span class="navbar-toggler-icon"></span> -->
                        <i class="fas fa-user-plus"></i>
                    </button>
                    <div class="form-inline">
                        <label for="tipo_conversion" class="mr-2 text-light">({{ $cantPersonas }}) Personas</label>
                        <div class="btn-group bootstrap-select ml-2 linea_botones_inf col-md-4">
                            <input type="text" class="form-control" wire:model.live='consulta'
                                placeholder="Nombre o etiqueta..." />
                            <div class="dropdown-menu" id="resultado_tareas">
                                <!-- RESULTADOS DE LA BUSQUEDA DE TAREAS -->
                            </div>
                        </div>
                    </div>
                </nav>
                <!-- CONTENIDO A DESPLEGARSE -->
                <div class="collapse show" id="navbarToggleExternalContent">
                    <!-- CONTENIDO OCULTO PARA AHORRAR ESPACIO -->
                    <div class="container">
                        <div class="card-body">

                            {{-- 1era fila de datos --}}
                            <div class="form-row">
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <label for="nombre">DNI</label>
                                        <input class="form-control" name="nombre" wire:model="dni" type="text"
                                            placeholder="Ej.: 34017257">
                                        @error('dni')
                                            {{-- cuando no es un componente x-adminlte, no hay que ponerle el @error() --}}
                                            <small class="text-danger">{{ $message }}</small>
                                        @enderror
                                    </div>
                                </div>

                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="nombre">Nombre</label>
                                        <input class="form-control" name="nombre" wire:model="nombre" type="text"
                                            placeholder="Ej.: Juan...">
                                        @error('nombre')
                                            {{-- cuando no es un componente x-adminlte, no hay que ponerle el @error() --}}
                                            <small class="text-danger">{{ $message }}</small>
                                        @enderror
                                    </div>
                                </div>

                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="nombre">Apellido</label>
                                        <input class="form-control" name="apellido" wire:model="apellido" type="text"
                                            placeholder="Ej.: Perez...">
                                        @error('apellido')
                                            {{-- cuando es un componente x-adminlte, no hay que ponerle el @error() --}}
                                            <small class="text-danger">{{ $message }}</small>
                                        @enderror
                                    </div>
                                </div>

                                <div class="col-md-2">
                                    <div class="form-group">
                                        <label for="fecha">Fecha</label>
                                        <!--INPUT de la fecha / wire:model apunta a la variable hecha en app/livewire/controlador -->
                                        <input type="date" wire:model="fecha_nac" class="form-control" id="fecha">
                                        @error('fecha_nac')
                                            <small class="text-danger">{{ $message }}</small>
                                        @enderror
                                    </div>
                                </div>

                                <div class="col-md-2">
                                    <div class="form-group">
                                        <label for="sexo">Sexo</label>
                                        <!--INPUT de la fecha / wire:model apunta a la variable hecha en app/livewire/controlador -->
                                        <select class="form-control" name="sexo" id="" wire:model='sexo'>
                                            @foreach ($sexos as $sexo)
                                                <option value="{{ $sexo->id }}">{{ $sexo->nombre }}</option>
                                            @endforeach

                                        </select>
                                        @error('sexo')
                                            <small class="text-danger">{{ $message }}</small>
                                        @enderror
                                    </div>
                                </div>

                            </div>

                            {{-- 2da fila de datos --}}
                            <div class="form-row">

                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="">Direccion</label>
                                        <input class="form-control" type="text" wire:model='direccion' placeholder="Ej.: Malvinas 123..." />
                                        @error('direccion')
                                            <small class="text-danger">{{ $message }}</small>
                                        @enderror
                                    </div>
                                </div>

                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="">Telefono</label>
                                        <input class="form-control" type="text" wire:model='telefono' placeholder="Ej.: 3434123456" />
                                        @error('telefono')
                                            <small class="text-danger">{{ $message }}</small>
                                        @enderror
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="tipo">Departamento</label>
                                        <select class="form-control" name="departamento" id="departamento"
                                            wire:model.live='departamento'>
                                            @foreach ($departamentos as $departamento)
                                                <option value="{{ $departamento->id }}">
                                                    {{ $departamento->nombre }}
                                                </option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>

                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="tipo">Localidad</label>
                                        <select class="form-control" name="localidad" id="localidad"
                                            wire:model='localidad'>
                                            @foreach ($localidades as $localidad)
                                                <option value="{{ $localidad->id }}">
                                                    {{ $localidad->nombre }}
                                                </option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                            </div>

                            {{-- 3da fila de datos (la mas completa de campos)--}}
                            <div class="form-row">
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <label for="tipo">Tipo</label>
                                        <select class="form-control" name="tipo" id="tipo" wire:model='tipo'>
                                            @foreach ($tipos as $tipo)
                                                <option value="{{ $tipo->id }}">{{ $tipo->nombre }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>

                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="">Matricula Provincial</label>
                                        <input class="form-control" type="text" wire:model='matricula_provincial' placeholder="ni idea... la matricula..." />
                                        @error('matricula_provincial')
                                            <small class="text-danger">{{ $message }}</small>
                                        @enderror
                                    </div>
                                </div>

                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="">Matricula Nacional</label>
                                        <input class="form-control" type="text" wire:model='matricula_nacional' placeholder="ni idea... la matricula..." />
                                        @error('matricula_nacional')
                                            <small class="text-danger">{{ $message }}</small>
                                        @enderror
                                    </div>
                                </div>

                                <div class="col-md-2">
                                    <div class="form-group">
                                        <label for="">Año</label>
                                        <input class="form-control" type="text" wire:model='anio_validez' placeholder="Año validez" />
                                        @error('anio')
                                            <small class="text-danger">{{ $message }}</small>
                                        @enderror
                                    </div>
                                </div>

                                <div class="col-md-2">
                                    <div class="form-group">
                                        <label for="">Estado</label>
                                        <select class="form-control" name="estado" id="estado" wire:model='estado'>
                                            @foreach ($estados as $estado)
                                                <option value="{{ $estado->id }}">{{ $estado->nombre }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                            </div>

                            {{-- 4ta fila de datos (por ahora tiene solo el club) --}}
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="">Club</label>
                                        <select class="form-control" name="club" id="club" wire:model='club'>
                                            @foreach ($clubes as $club)
                                                <option value="{{ $club->id }}">{{ $club->nombre }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                            </div>

                            {{-- Boton para cargar la persona con la funcion de Livewire --}}
                            <div class="form-group d-flex mb-0">
                                <button class="btn btn-success ml-auto" name="agregarpersona"
                                    wire:click="guardarPersona">Agregar</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    {{-- Busqueda y credencial --}}
    <div class="row">
        <div class="col-md-7">
            <div class="card">
                <div class="card-body overflow-auto pl-1 py-0" style="min-height: 400px; max-height: 400px;">
                    {{-- algo de la busqueda --}}
                </div>
            </div>
        </div>

        <div class="col-md-5">
            <div class="card" style="min-height: 300px; max-height: 300px;">
                <div class="card-header"></div>
                <div class="card-body"></div>
                <div class="card-footer"></div>
            </div>
        </div>

    </div>
</div>
