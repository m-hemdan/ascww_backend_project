<?php

use Illuminate\Http\Request;
use  App\Http\Controllers\billingController;
use  App\Http\Controllers\studentController;

header('Access-Control-Allow-Origin:  *');
header('Access-Control-Allow-Methods:  POST, GET, OPTIONS, PUT, DELETE');
header('Access-Control-Allow-Headers:  Content-Type, X-Auth-Token, Origin, Authorization');



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


/*
Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
*/

Route::middleware('auth:api')->get('/user', 'UserController@show');

Route::get('apiGetAllBill','billingController@getAllBill');

Route::get("apiSearch/{Bills_AccountNum}",[billingController::class,'search']);

Route::match(['get','post'],"/student",[studentController::class,'save'])->name("saveStudent");