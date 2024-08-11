<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Tables;

class TableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $tables = [
            ['name' => 'Meja No 1'],
            ['name' => 'Meja No 2'],
            ['name' => 'Meja No 3'],
        ];

        foreach($tables as $table){
            Tables::create($table);
        }
    }
}
