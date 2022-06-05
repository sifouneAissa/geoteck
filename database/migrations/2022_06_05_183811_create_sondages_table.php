<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSondagesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('sondages', function (Blueprint $table) {
            $table->increments('id');
            $table->string('code_sondage', 200)->nullable();
            $table->string('code_ana', 200)->nullable();
            $table->date('date')->nullable();
            $table->string('profondeur_max', 200)->nullable();
            $table->string('x', 200)->nullable();
            $table->string('y', 200)->nullable();
            $table->string('z', 200)->nullable();
            $table->string('systeme_de_projection', 200)->nullable();
            $table->string('mode_sondage', 200)->nullable();
            $table->integer('essai_in_situ_id')->index();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('sondages');
    }
}
