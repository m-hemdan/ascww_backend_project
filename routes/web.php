<?php
use  App\Http\Controllers\studentController;
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

// Route::get('/', function () { return view('welcome'); });
Route::view('/', 'welcome');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::prefix('api')->group(function(){
    route::get('getAllBill','billingController@getAllBill');
    route::get('search/{Bills_AccountNum}','billingController@search');
});

//Route::match(['get','post'],"/student",[studentController::class,'save'])->name("saveStudent");