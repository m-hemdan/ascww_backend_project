<?php
use  App\Http\Controllers\studentController;
use App\Http\Controllers\uploadController;
use App\Http\Controllers\NewsController;

header('Access-Control-Allow-Origin:  *');
header('Access-Control-Allow-Methods:  POST, GET, OPTIONS, PUT, DELETE');
header('Access-Control-Allow-Headers:  Content-Type, X-Auth-Token, Origin, Authorization');

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

//Route::get('/', function () { return view('welcome'); });
Route::view('/', 'welcome');
Route::view('/index','index');
Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
/*Route::get('contact',function(){
    return view('app');
});
*/
Route::prefix('api')->group(function(){
    Route::get('getAllBill','billingController@getAllBill');
    Route::get('search/{Bills_AccountNum}','billingController@search');
});
//Route::post('upload','uploadController@handle');
//Route::get('insert','uploadController@insertform');
//Route::post('create','uploadController@insert');
//Route::match(['get','post'],"/student",[studentController::class,'save'])->name("saveStudent");
Route::match(['get','post'],"/create",[uploadController::class,'create'])->name("createnews");
//Route::get('/uploadpage',[studentController::class,'uploadPage']);

Route::get('/show',[studentController::class,'showAllStudent']); //show all student
Route::get('/assets/{file}',[studentController::class,'downloadPdfFile']);   //chose the correct file 