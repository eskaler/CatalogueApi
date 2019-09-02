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


Route::prefix('/categories')->group(function () {     
    Route::get('/', 'CategoryController@index');
    Route::middleware('auth:api')->post('/', 'CategoryController@store');
    Route::middleware('auth:api')->put('/{id}', 'CategoryController@update');
});

Route::prefix('/orders')->group(function () {
    Route::middleware('auth:api')->get('/', 'OrderController@index');
    Route::middleware('auth:api')->get('/{id}', 'OrderController@show');
    Route::middleware('auth:api')->put('/{id}', 'OrderController@update');

    Route::post('/', 'OrderController@store');
    Route::post('/{id}/products', 'OrderProductController@store');
    
});

Route::prefix('/products')->group(function () {     
    Route::get('/', 'ProductController@index');
    Route::middleware('auth:api')->post('/', 'ProductController@store');
    Route::middleware('auth:api')->put('/', 'ProductController@update');
    Route::middleware('auth:api')->put('/{id}', 'ProductController@update');
});

Route::prefix('/photos')->group(function () {
    Route::middleware('auth:api')->get('/{id}', 'PhotoController@show');
    Route::middleware('auth:api')->post('/', 'PhotoController@store');    
    Route::middleware('auth:api')->post('/upload', 'PhotoController@upload');
});

Route::prefix('/users')->group(function () {
    Route::post('/login', 'Auth\\LoginController@login');
    // Route::post('/logout', 'Auth\\LoginController@logout');
});





