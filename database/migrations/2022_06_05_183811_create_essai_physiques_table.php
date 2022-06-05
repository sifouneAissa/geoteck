<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateEssaiPhysiquesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('essai_physiques', function (Blueprint $table) {
            $table->increments('id');
            $table->string('granulometrie_min', 200)->nullable();
            $table->string('masse_volumique_yd', 200)->nullable();
            $table->string('teneur_en_eau_w', 200)->nullable();
            $table->string('proctor_teneur_en_eau_w', 200)->nullable();
            $table->string('proctor_teneur_en_eau_yd', 200)->nullable();
            $table->string('wp', 200)->nullable();
            $table->string('ip', 200)->nullable();
            $table->string('wl', 200)->nullable();
            $table->integer('code_essai_laboratoire');
            $table->string('granulometrie_max', 200)->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('essai_physiques');
    }
}
