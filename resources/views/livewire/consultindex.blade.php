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
                        <input type="text" class="form-control" placeholder="Ej: 34017257" autocomplete="false" wire:model.live='consulta'>
                    </div>
                </div>
            </nav>
        </div>
        <div class="card-body overflow-auto" style="min-height: 100px; max-height: 200px;">
            @foreach ($personas as $persona)
                <li>
                    <div class="item-list">{{ $persona->apellido . " " . $persona->nombre}}</div>
                </li>
            @endforeach
        </div>
        <div class="card-footer"></div>
    </div>
</div>
