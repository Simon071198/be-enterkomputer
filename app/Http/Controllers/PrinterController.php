<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Printer;

class PrinterController extends Controller
{
    public function index(){
        return Printer::all();
    }
}
