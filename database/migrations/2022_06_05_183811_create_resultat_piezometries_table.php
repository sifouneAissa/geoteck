<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateResultatPiezometriesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('resultat_piezometries', function (Blueprint $table) {
            $table->increments('id');
            $table->date('date')->nullable();
            $table->string('niveau_piezometrique', 200)->nullable();
            $table->integer('piezometrie_id')->index();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('resultat_piezometries');
    }
}
