<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateResultatPermeabilitesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('resultat_permeabilites', function (Blueprint $table) {
            $table->increments('id');
            $table->string('code', 200)->nullable();
            $table->string('profondeur', 200)->nullable();
            $table->string('coefficient_permeabilite_K', 200)->nullable();
            $table->integer('permeabilite_id')->index('resultat_permeabilite_lefrancs_permeabilite_id_index');
            $table->string('type', 200)->nullable();
            $table->string('unite', 200)->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('resultat_permeabilites');
    }
}
