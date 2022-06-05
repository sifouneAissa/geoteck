<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateResultatPressiometresTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('resultat_pressiometres', function (Blueprint $table) {
            $table->increments('id');
            $table->string('profondeur', 200)->nullable();
            $table->string('pression_limite_pl', 200)->nullable();
            $table->string('pressionde_fluage', 200)->nullable();
            $table->string('em_pl', 200)->nullable();
            $table->string('module_pressiometrique', 200)->nullable();
            $table->string('coefficient_rheologique', 200)->nullable();
            $table->string('module_de_young', 200)->nullable();
            $table->integer('pressiometre_id')->nullable()->index();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('resultat_pressiometres');
    }
}
