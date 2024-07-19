<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::table('users', function (Blueprint $table) {
            $table->renameColumn('name','nama_depan');
            $table->string('nama_belakang');
            $table->string('konfirmasi_password');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('table_user', function (Blueprint $table) {
            $table->renameColumn('nama_depan','name');
            $table->dropColumn('nama_belakang');
            $table->dropColumn('konfirmasi_password');
        });
    }
};
