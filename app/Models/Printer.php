<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Concerns\HasUuids;

class Printer extends Model
{
    use HasFactory, SoftDeletes, HasUuids;

    protected $fillable = ['name', 'type'];
    protected $table = 'printers';
    protected $keyType = 'uuid';
    public $incrementing = false;
    public $timestamps = true;
}
