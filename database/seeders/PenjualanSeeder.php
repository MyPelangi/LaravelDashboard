<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\DB;

class PenjualanSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Mendapatkan ID dari cabang yang ada
        $cabangId = DB::table('ms_cabang')->pluck('id');

        $penjualanData = [
            [
                'REFID_Cabang' => $cabangId[0],
                'nominal' => 10000000.00,
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now(),
            ],
            [
                'REFID_Cabang' => $cabangId[1],
                'nominal' => 15000000.00,
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now(),
            ],
            [
                'REFID_Cabang' => $cabangId[2],
                'nominal' => 5000000.00,
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now(),
            ],
            [
                'REFID_Cabang' => $cabangId[3],
                'nominal' => 18000000.00,
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now(),
            ],
            [
                'REFID_Cabang' => $cabangId[4],
                'nominal' => 20000000.00,
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now(),
            ],
            [
                'REFID_Cabang' => $cabangId[5],
                'nominal' => 11000000.00,
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now(),
            ],
            [
                'REFID_Cabang' => $cabangId[6],
                'nominal' => 35000000.00,
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now(),
            ],
        ];

        DB::table('dt_penjualan')->insert($penjualanData);
    }
}
