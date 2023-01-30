<?php

use App\Http\Controllers\AutentikasiController;
use App\Http\Controllers\DeviceLoginCheckController;
use App\Http\Controllers\PenjualanController;
use App\Http\Middleware\tokenCheck;
use Illuminate\Support\Facades\Route;


Route::post("login", [AutentikasiController::class, "loginAPI"]);
Route::post("device-logged-in-check", [DeviceLoginCheckController::class, "checkDevice"]);
Route::middleware([tokenCheck::class])->group(function () {
    Route::prefix("penjualan")->group(function () {
        Route::get("/", [PenjualanController::class, "index"]);
    });
});
