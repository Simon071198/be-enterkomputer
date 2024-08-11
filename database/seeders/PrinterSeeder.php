<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Printer;

class PrinterSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $printers = [
            [
                'name' => 'Printer Kasir',
                'type' => 'A',
            ],
            [
                'name' => 'Printer Dapur',
                'type' => 'B',
            ],
            [
                'name' => 'Printer Bar',
                'type' => 'C'
            ]
            ];

        foreach($printers as $printer){
            Printer::create($printer);
        }
    }
}
