<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateEssaiSptsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('essai_spts', function (Blueprint $table) {
            $table->increments('id');
            $table->string('code_spt', 200)->nullable();
            $table->date('date')->nullable();
            $table->string('profondeurs', 200)->nullable();
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
        Schema::dropIfExists('essai_spts');
    }
}
