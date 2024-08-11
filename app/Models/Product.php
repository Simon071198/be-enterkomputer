<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Concerns\HasUuids;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Product extends Model
{
    use HasFactory, SoftDeletes, HasUuids;

    protected $fillable = ['name', 'category', 'variant', 'price'];
    protected $table = 'product';
    protected $keyType = 'uuid';
    public $incrementing = false;
    public $timestamps = true;

    public function orderItems(): HasMany{
        return $this->hasMany(OrderItem::class);
    }
}
