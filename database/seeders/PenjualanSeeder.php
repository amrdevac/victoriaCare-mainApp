<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class PenjualanSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $dataPenjualan = [
            [
                "kd_barang" => "1001",
                "nama_barang" => "Minyak Zaitun",
                "customer" => "Fahmi",
                "qty" => "2",
                "harga" => "25000",
                "netto" => "50000",
            ],
            [
                "kd_barang" => "2001",
                "nama_barang" => "Miranda Semir Hitam",
                "customer" => "Amrullah",
                "qty" => "3",
                "harga" => "12000",
                "netto" => "36000",
            ],
            [
                "kd_barang" => "3001",
                "nama_barang" => "Nuface Lip Cream",
                "customer" => "Fahmi",
                "qty" => "2",
                "harga" => "35000",
                "netto" => "70000",
            ]
        ];
        DB::table("penjualan")->insert($dataPenjualan);
    }
}
