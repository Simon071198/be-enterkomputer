<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Concerns\HasUuids;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class OrderItem extends Model
{
    use HasFactory, SoftDeletes, HasUuids;

    protected $fillable = ['order_id', 'product_id', 'printer_id', 'quantity', 'price'];
    protected $table = 'order_items';
    protected $keyType = 'uuid';
    public $incrementing = false;
    public $timestamps = true;

    public function order(): BelongsTo{
        return $this->belongsTo(Order::class);
    }

    public function product(): BelongsTo{
        return $this->belongsTo(Product::class);
    }

    public function printer(): BelongsTo{
        return $this->belongsTo(Printer::class);
    }
}
