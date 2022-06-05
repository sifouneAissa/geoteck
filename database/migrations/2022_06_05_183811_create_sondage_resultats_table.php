<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSondageResultatsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('sondage_resultats', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('sondage_id')->nullable()->index();
            $table->string('profondeur', 200)->nullable();
            $table->string('lithologie', 200)->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('sondage_resultats');
    }
}
