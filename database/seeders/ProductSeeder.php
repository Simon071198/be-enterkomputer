<?php

namespace Database\Seeders;
use App\Models\Product;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $products = [
            [
                'name' => 'Jeruk Dingin',
                'category' => 'minuman',
                'variant' => 'Dingin',
                'price' => '12000',
            ],
            [
                'name' => 'Jeruk Panas',
                'category' => 'minuman',
                'variant' => 'Panas',
                'price' => '10000'
            ],
            [
                'name' => 'Teh Manis',
                'category' => 'minuman',
                'variant' => 'Manis',
                'price' => '8000'
            ],
            [
                'name' => 'Teh Tawar',
                'category' => 'minuman',
                'variant' => 'Tawar',
                'price' => '5000'
            ],
            [
                'name' => 'Kopi Dingin',
                'category' => 'minuman',
                'variant' => 'Dingin',
                'price' => '8000'
            ],
            [
                'name' => 'Kopi Panas',
                'category' => 'minuman',
                'variant' => 'Panas',
                'price' => '6000'
            ],
            [
                'name' => 'Extra Es Batu',
                'category' => 'minuman',
                'variant' => 'Dingin',
                'price' => '2000'
            ],
            [
                'name' => 'Mie Goreng',
                'category' => 'makanan',
                'variant' => 'Goreng',
                'price' => '15000'
            ],
            [
                'name' => 'Mie Kuah',
                'category' => 'makanan',
                'variant' => 'Kuah',
                'price' => '15000'
            ],
            [
                'name' => 'Nasi Goreng',
                'category' => 'makanan',
                'variant' => 'Goreng',
                'price' => '15000'
            ],
            [
                'name' => 'Nasi Goreng + Jeruk Dingin',
                'category' => 'promo',
                'variant' => '',
                'price' => '23000'
            ]
        ];

        foreach ($products as $product){
            Product::create($product);
        }
    }
}
