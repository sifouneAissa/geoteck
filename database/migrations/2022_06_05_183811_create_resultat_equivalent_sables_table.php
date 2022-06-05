<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateResultatEquivalentSablesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('resultat_equivalent_sables', function (Blueprint $table) {
            $table->increments('id');
            $table->string('profondeur', 200)->nullable();
            $table->string('es', 200)->nullable();
            $table->integer('essai_physique_id')->index('resultat_equivalent_sable_essai_physique_id_index');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('resultat_equivalent_sables');
    }
}
