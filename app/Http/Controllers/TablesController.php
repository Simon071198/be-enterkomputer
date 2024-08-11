<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Tables;

class TablesController extends Controller
{
    public function index(){
        return Tables::all();
    }
}
