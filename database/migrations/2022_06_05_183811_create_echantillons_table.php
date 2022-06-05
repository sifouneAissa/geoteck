<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateEchantillonsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('echantillons', function (Blueprint $table) {
            $table->increments('id');
            $table->string('profondeur', 200)->nullable();
            $table->integer('code_sondage')->index();
            $table->string('code_echantillon', 200);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('echantillons');
    }
}
