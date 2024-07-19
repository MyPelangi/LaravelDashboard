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
        Schema::create('dt_penjualan', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('REFID_Cabang');
            $table->foreign('REFID_Cabang')->references('id')->on('ms_cabang'); //deklarasi foreign key
            $table->decimal('nominal',15,2); // 13 digit sebelum titik desimal, 2 digit setelah titik desimal
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('dt_penjualan');
    }
};
