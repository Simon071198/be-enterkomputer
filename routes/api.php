<?php

use App\Http\Controllers\ProductController;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\PrinterController;
use App\Http\Controllers\TablesController;
use Illuminate\Support\Facades;
use Illuminate\Support\Facades\Route;

/**
 * @OA\Get(
 *   path="/product",
 *   summary="List product.",
 *   tags={"product"},
 *   
 *   @OA\Response(response=200, description="OK"),
 *   @OA\Response(response=401, description="Unauthorized"),
 *   @OA\Response(response=404, description="Not Found")
 * )
 */

Route::get('/product', [ProductController::class, 'index']);
Route::get('/printer', [PrinterController::class, 'index']);
Route::get('/tables', [TablesController::class, 'index']);
Route::post('/orders', [OrderController::class, 'store']);
Route::get('/orders/{id}/bill', [OrderController::class, 'getBill']);
