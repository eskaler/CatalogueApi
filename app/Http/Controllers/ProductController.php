<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Resources\ProductResource;

use App\Models\Product;
use App\Models\Photo; 

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $products = Product::all();
        $products->load('category', 'photos');
        return ProductResource::collection($products);
        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {       
            
        $product = new Product;

        $product->s_name        = $request->name;
        $product->s_caption     = $request->caption;
        $product->s_desc        = $request->desc;
        $product->n_qty         = $request->quantity;
        $product->f_price       = $request->price;
        $product->id_creator    = $request->creator;
        $product->id_category   = $request->category["id"];

        $product->save();

        return new ProductResource($product);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $product = Product::find($id);

        $product->s_name        = $request->name;
        $product->s_caption     = $request->caption;
        $product->s_desc        = $request->desc;
        $product->n_qty         = $request->quantity;
        $product->f_price       = $request->price;
        $product->id_creator    = $request->creator;
        $product->id_category   = $request->category["id"];

        $product->save();

        return new ProductResource($product);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
