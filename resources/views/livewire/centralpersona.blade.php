<div>
    <div class="row">
        <div class="col-md-12">
            <div class="card pos-f-t">
                <!-- El NAVDARK va primero para que el contenido se desplegue hacia abajo -->
                <nav class="navbar navbar-dark bg-gradient-secondary">
                    <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarToggleExternalContent" aria-controls="navbarToggleExternalContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                        <!-- <span class="navbar-toggler-icon"></span> -->
                        <i class="fas fa-file-code"></i>
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
                <div class="collapse" id="navbarToggleExternalContent">
                    <!-- CONTENIDO OCULTO PARA AHORRAR ESPACIO -->
                    <div class="container">
                        <div class="card-body">
                            <div class="form-row">
                                <div class="col-md-4">
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

                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="nombre">Apellido</label>
                                        <input class="form-control" name="etiqueta" wire:model="apellido" type="text"
                                            placeholder="Ej.: Perez...">
                                        @error('desarrollo')
                                            {{-- cuando es un componente x-adminlte, no hay que ponerle el @error() --}}
                                            <small class="text-danger">{{ $message }}</small>
                                        @enderror
                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="tipo">Tipo</label>
                                        <select class="form-control" name="tipo" id="tipo" wire:model='tipo'>
                                            @foreach ($tipos as $tipo)
                                                <option value="{{ $tipo->id }}">{{ $tipo->nombre }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>


                            </div>
                            <div class="form-group">
                                <label for="fecha">Fecha</label>
                                <!--INPUT de la fecha / wire:model apunta a la variable hecha en app/livewire/controlador -->
                                <input type="date" wire:model="fecha" class="form-control" id="fecha">
                                @error('fecha')
                                    <small class="text-danger">{{ $message }}</small>
                                @enderror
                            </div>
                            <div class="form-group d-flex mb-0">
                                <button class="btn btn-success ml-auto" name="agregarpersona"
                                    wire:click="agregarpersona">Agregar</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
