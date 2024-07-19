<?php

use App\Http\Controllers\InfoController;
use App\Http\Controllers\SessionController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/home', function(){
    return view('home');
});

Route::get('/home', [InfoController::class, 'TotalCabang']);
Route::get('/login', [SessionController::class, 'index']);
Route::post('/login', [SessionController::class, 'login']);
Route::get('/logout', [SessionController::class, 'logout']);
Route::get('/register', [SessionController::class, 'register']);
Route::post('/create', [SessionController::class, 'create'])->name('create');