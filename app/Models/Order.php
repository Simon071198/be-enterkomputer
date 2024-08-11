<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Concerns\HasUuids;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Order extends Model
{
    use HasFactory, SoftDeletes, HasUuids;

    protected $fillable = ['table_id', 'total'];
    protected $table = 'orders';
    protected $keyType = 'uuid';
    public $incrementing = false;
    public $timestamps = true;

    public function orderItems(): HasMany{
        return $this->hasMany(OrderItem::class);
    }

    public function tables(): BelongsTo{
        return $this->belongsTo(Tables::class, 'table_id', 'id');
    }
}
