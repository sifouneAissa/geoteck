<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateResultatEssaiSptsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('resultat_essai_spts', function (Blueprint $table) {
            $table->increments('id');
            $table->string('profondeur', 200)->nullable();
            $table->string('valeur_nspt', 200)->nullable();
            $table->string('schultze_menzenbach_e', 200)->nullable();
            $table->string('skempton_n1', 200)->nullable();
            $table->string('skempton_dr', 200)->nullable();
            $table->integer('essai_spt_id')->index();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('resultat_essai_spts');
    }
}
