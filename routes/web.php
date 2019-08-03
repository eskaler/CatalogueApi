<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::prefix('/products')->group(function () {
    Route::get('/', 'ProductController@index');
});


Route::get('/', function () {
    return view('welcome');
});


Route::get('/orderstates', function () {
    $orderStates = App\Models\OrderState::all();
    return $orderStates;
});