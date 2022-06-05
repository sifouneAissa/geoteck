<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateEssaiMecaniquesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('essai_mecaniques', function (Blueprint $table) {
            $table->increments('id');
            $table->string('triaxial', 200)->nullable();
            $table->string('cisaillement_rectiligne', 200)->nullable();
            $table->string('oedometre', 200)->nullable();
            $table->string('gonflement', 200)->nullable();
            $table->string('traction', 200)->nullable();
            $table->string('compression_simple', 200)->nullable();
            $table->integer('code_essai_laboratoire')->index();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('essai_mecaniques');
    }
}
