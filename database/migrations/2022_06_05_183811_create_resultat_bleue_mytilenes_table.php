<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateResultatBleueMytilenesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('resultat_bleue_mytilenes', function (Blueprint $table) {
            $table->increments('id');
            $table->string('profondeur', 200)->nullable();
            $table->string('vbs', 200)->nullable();
            $table->integer('essai_physique_id')->nullable()->index();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('resultat_bleue_mytilenes');
    }
}
