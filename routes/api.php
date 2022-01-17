<?php

use Illuminate\Http\Request;
use  App\Http\Controllers\billingController;
use  App\Http\Controllers\studentController;
use App\Http\Controllers\SearchItemController;
use App\Http\Controllers\ComplaineController;
use App\Http\Controllers\NewsController;
use App\Http\Controllers\projectsController;

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

Route::get('apiGetAllBill','billingController@getAllBill');    //api to get All bill in inquire your bill
Route::get("apiSearch/{Bills_AccountNum}",[billingController::class,'search']);   // api to get specific bill like 261
Route::match(['get','post'],"/student",[studentController::class,'save'])->name("saveStudent");  // api to insert student in school
Route::get('getAllItemsSearch','SearchItemController@getAllItem'); //pass
Route::match(['get','post'],"/insertComplaine",[ComplaineController::class,'saveX'])->name("saveComplaine"); //provide complain
Route::get('apiGetAllNews','NewsController@getAllNews'); //api to get all news in welcome page 
Route::get("selectedItemSearch/{selectedItem}",[NewsController::class,'backItemFun']); //get all item in news table with word in selected item 
Route::get('apiGetAllProjects','projectsController@getAllProjects'); //api to get all news in welcome page 
Route::get('apiGetAllTenders','TendersController@getAllTenders'); //api to get all tenders in all tenders page


