<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\OrderProduct;
use App\Http\Resources\OrderProductResource;

class OrderProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request, $id)
    {
        // dd($request);

        $orderProducts = [];

        foreach($request->all() as $key => $product){
            
            $orderProduct = new OrderProduct;

            $orderProduct->id_order = $id;
            $orderProduct->id_product = $product['idProduct'];
            $orderProduct->n_qty = $product['quantity'];

            $orderProduct->save();

            $orderProducts[] = $orderProduct;
        }

        return ['data' => $orderProducts];
        
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\OrderProduct  $orderProduct
     * @return \Illuminate\Http\Response
     */
    public function show(OrderProduct $orderProduct)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\OrderProduct  $orderProduct
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, OrderProduct $orderProduct)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\OrderProduct  $orderProduct
     * @return \Illuminate\Http\Response
     */
    public function destroy(OrderProduct $orderProduct)
    {
        //
    }
}
