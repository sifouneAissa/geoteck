<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCompagneReconnaissanceGeotechniquesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('compagne_reconnaissance_geotechniques', function (Blueprint $table) {
            $table->increments('id');
            $table->string('type_de_reconnaissance')->nullable();
            $table->string('phase')->nullable();
            $table->date('date')->nullable();
            $table->string('nom', 200)->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('compagne_reconnaissance_geotechniques');
    }
}
