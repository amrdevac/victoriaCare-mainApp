<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $dataUser = [
            [
                // $2y$10$bFgXv.0cpXP7TOp5PxoELebvpTuRtImKGLn95AburX4FjcAaPb47C
                "userid" => "herborist",
                "email" => "herborist@vci.co.id",
                "password" => Hash::make("123"),
                "updated_at" => date("Y-m-d H:i:s"),
                "created_at" => date("Y-m-d H:i:s"),
            ],
            [
                "userid" => "miranda",
                "email" => "miranda@vci.co.id",
                "password" => Hash::make("JuaranyaSemirRambut"),
                "updated_at" => date("Y-m-d H:i:s"),
                "created_at" => date("Y-m-d H:i:s"),
            ]
        ];
        DB::table("users")->insert($dataUser);
    }
}
