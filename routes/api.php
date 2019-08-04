<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});


// Route::prefix('/products')->group(function () {
//     Route::get('/', 'ProductController@index');
// });
// Route::prefix('/producttypes')->group(function () {
//     Route::get('/', 'ProductTypeController@index');
// });

Route::prefix('/orders')->group(function () {
    Route::middleware('auth:api')->get('/', 'OrderController@index');
});

Route::resource('products', 'ProductController');
Route::resource('producttypes', 'ProductTypeController');



