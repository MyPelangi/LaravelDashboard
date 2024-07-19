<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\DB;

class CabangSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $cabangData= [
            [
                'nama_cabang' => 'Toko Pusat',
                'alamat' => 'Jl. Merdeka No. 1, Jakarta',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now(),
            ],
            [
                'nama_cabang' => 'Toko Barat',
                'alamat' => 'Jl. Kebon Jeruk No. 10, Bandung',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now(),
            ],
            [
                'nama_cabang' => 'Toko Timur',
                'alamat' => 'Jl. Madiun No. 45, Surabaya',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now(),
            ],
            [
                'nama_cabang' => 'Toko Selatan',
                'alamat' => 'Jl. Palembang No. 78, Bali',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now(),
            ],
            [
                'nama_cabang' => 'Toko Utara',
                'alamat' => 'Jl. Yogyakarta No. 15, Yogyakarta',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now(),
            ],
            [
                'nama_cabang' => 'Toko Barat Daya',
                'alamat' => 'Jl. Indramayu No. 10, Surabaya',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now(),
            ],
            [
                'nama_cabang' => 'Toko Tenggara',
                'alamat' => 'Jl. Cendrawasih No. 10, Balikpapan',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now(),
            ]
        ];

        // Insert data ke tabel stores
        DB::table('ms_cabang')->insert($cabangData);
    }
}
