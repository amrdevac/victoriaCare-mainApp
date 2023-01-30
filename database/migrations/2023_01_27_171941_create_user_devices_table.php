<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUserDevicesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('user_devices', function (Blueprint $table) {
            $table->id();
            $table->string("user_id");
            $table->string("user_ip");
            $table->string("user_agent");
            $table->string("device_type");
            $table->string("browser_name");
            $table->string("browser_family");
            $table->string("browser_version");
            $table->string("browser_version_major");
            $table->string("browser_version_minor");
            $table->string("browser_version_patch");
            $table->string("browser_engine");
            $table->string("platform_name");
            $table->string("platform_family");
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('user_devices');
    }
}
