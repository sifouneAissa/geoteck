<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePressiometresTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('pressiometres', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('sondage_id')->index();
            $table->date('date')->nullable();
            $table->string('type', 200)->nullable();
            $table->string('profondeur_max', 200)->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('pressiometres');
    }
}
