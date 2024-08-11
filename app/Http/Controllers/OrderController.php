<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Order;
use App\Models\OrderItem;
use App\Models\Printer;
use App\Models\Product;

class OrderController extends Controller
{
    public function store(Request $request)
    {
        // Create the order
        $order = Order::create([
            'table_id' => $request->table_id,
            'total' => $request->total
        ]);

        foreach ($request->items as $item) {
            // Create the order item
            $orderItem = OrderItem::create([
                'order_id' => $order->id,
                'product_id' => $item['product_id'],
                'printer_id' => $item['printer_id'],
                'quantity' => $item['quantity'],
                'price' => $item['price']
            ]);
        }

        // Prepare the response data
        $response = [
            'order' => $order,
            'order_item' => $orderItem
        ];

        return response()->json($response);
    }

    public function getBill($id){
        $order = Order::with('orderItems.product', 'orderItems.printer', 'tables')->find($id);

        $billData = [
            'table_name' => $order->tables->name,
            // 'printer_name' => $order->printers->name,
            'items' => $order->orderItems->map(function ($item) {
                return [
                    'id' => $item->id,
                    'printer_name' => $item->printer->name,
                    'product_name' => $item->product->name,
                    'variant' => $item->product->variant,
                    'category' => $item->product->category,
                    'quantity' => $item->quantity,
                    'price' => $item->price,
                    'order_id' => $item->order_id,
                    'product_id' => $item->product_id,
                    'printer_id' => $item->printer_id
                ];
            })
        ];

        return response()->json($billData);
    }

}
