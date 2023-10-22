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
            $table->string('apellido', 100);
            $table->string('nombre', 100);
            $table->string('dni', 11);
            $table->date('fecha_nac');
            $table->string('direccion', 100);
            $table->string('telefono', 20);
            $table->bigInteger('categoria_id')->nullable();
            $table->bigInteger('tipo_id')->nullable();
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
