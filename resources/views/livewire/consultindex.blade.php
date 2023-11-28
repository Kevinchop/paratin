<div>
    <div class="card">
        <div class="card-header">
            <nav class="navbar navbar-light">
                <div class="form-inline">
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="basic-addon1">
                                DNI
                            </span>
                        </div>
                        <input type="text" class="form-control" id="consulta" placeholder="Ej: 34017257"
                            autocomplete="false" wire:model.live='consulta'>
                    </div>
                </div>
            </nav>
        </div>
        <div class="card-body overflow-auto" style="min-height: 250px; max-height: 250px;">
            @if ($consulta != '')
                @foreach ($personas as $persona)
                    <div class="card rounded-0 rounded-top bg-dark">
                        <div class="card-header" style="height: 70px;"></div>
                        <div class="card-body d-flex bg-light">
                            <div class="col-md-3">
                                <img src="assets/img/ico_tipos/{{ $persona->tipo->imagen }}"
                                    alt="{{ $persona->tipo->nombre }}" class="profile">
                            </div>
                            <div class="d-flex col-md-9">
                                <h5>{{ $persona->apellido . ' ' . $persona->nombre }}</h5>
                            </div>
                        </div>
                    </div>
                    <div class="card rounded-0 rounded-bottom mt-0">
                        <div class="row">
                            <div class="col-sm-4">
                                <div class="form-inline">
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">
                                                SEXO
                                            </span>
                                            <div class="form-control">{{ $persona->sexo->acronimo }}</div>
                                        </div>
                                    </div>

                                </div>

                            </div>
                            <div class="col-md-4"></div>
                            <div class="col-md-4"></div>
                        </div>
                    </div>
                @endforeach
            @endif
        </div>
        <div class="card-footer"></div>
    </div>
</div>
