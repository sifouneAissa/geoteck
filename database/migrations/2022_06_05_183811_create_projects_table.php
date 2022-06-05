<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProjectsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('projects', function (Blueprint $table) {
            $table->increments('id');
            $table->string('Nom', 100)->nullable();
            $table->text('duree')->nullable();
            $table->string('maitre_de_ouvrage', 100)->nullable();
            $table->string('maitre_de_oeuve', 100)->nullable();
            $table->string('entreprise_de_realisation', 200)->nullable();
            $table->integer('situation_id')->index();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('projects');
    }
}
