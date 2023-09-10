<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\userAauthController;
use App\Http\Controllers\dashboardController;
use App\Http\Controllers\admin\userController;

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
    // Route::get('/dashboard', function () {
    // return view('admin.dashboard');
    // });

    Route::get('/register',[userAauthController::class,'index'])->name('view.register');
    Route::post('/register',[userAauthController::class,'register'])->name('register');
    Route::get('/',[userAauthController::class,'viewlogin'])->name('view.login');
    Route::post('/',[userAauthController::class,'login'])->name('login');
    
    Route::group(['middleware'=>'admin','prefix'=>'admin'],function(){
    Route::get('/dashboard',[dashboardController::class,'index'])->name('dashboard');
    Route::get('/user',[userController::class,'index'])->name('view.user');
    });

    

