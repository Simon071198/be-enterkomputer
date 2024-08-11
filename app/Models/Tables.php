<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Concerns\HasUuids;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Tables extends Model
{
    use HasFactory, SoftDeletes, HasUuids;

    protected $fillable = ['name'];
    protected $table = 'tables';
    protected $keyType = 'uuid';
    public $incrementing = false;
    public $timestamps = true;

    public function orders(): HasMany{
        return $this->hasMany(Order::class);
    }
}
