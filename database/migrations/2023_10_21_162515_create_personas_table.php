<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('personas', function (Blueprint $table) {
            $table->id();
            $table->string('dni', 11);
            $table->string('apellido', 100);
            $table->string('nombre', 100);
            $table->date('fecha_nac');
            $table->bigInteger('sexo_id')->nullable();
            $table->string('direccion', 100)->nullable();
            $table->bigInteger('departamento_id')->nullable();
            $table->bigInteger('localidade_id')->nullable();
            $table->string('telefono', 20)->nullable();
            $table->bigInteger('clube_id')->nullable();
            $table->string('matricula_nac', 30)->nullable();
            $table->string('matricula_prov', 30)->nullable();
            $table->bigInteger('anio')->nullable();
            $table->bigInteger('estado_id')->nullable(); //Activo o Vencido
            $table->bigInteger('tipo_id')->nullable(); //tipo_ente
            $table->string('imagen', 50)->nullable();
            $table->timestamps();
        });
    }


    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('personas');
    }
};
