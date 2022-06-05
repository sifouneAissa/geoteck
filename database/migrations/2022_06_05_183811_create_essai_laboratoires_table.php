<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateEssaiLaboratoiresTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('essai_laboratoires', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('code_echantillon');
            $table->string('profondeur_prelevement', 200)->nullable();
            $table->date('date_prelevement')->nullable();
            $table->string('mode_de_prelevement', 200)->nullable();
            $table->string('conditions_conservation', 300)->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('essai_laboratoires');
    }
}
