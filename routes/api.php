<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\RegisterController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/
Route::post('mamuuserregister',[RegisterController::class,'mamuuserregister']);

Route::post("mamulogin",[RegisterController::class,'mamulogin']);


Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
