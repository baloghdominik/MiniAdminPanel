<?php

use Illuminate\Support\Facades\Route;

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

Route::group(['middleware'=>'language'],function ()
{
  Auth::routes([
    'register' => false,
    'reset' => false,
    'verify' => false,
  ]);
  
  Route::get('/home/{page?}', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
  
  Route::get('/{page?}', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
  
  Route::get('changeLocale/{locale}', [App\Http\Controllers\HomeController::class, 'changeLocale']);
  
  Route::post('/addCompany', [App\Http\Controllers\CompanyController::class, 'addCompany']);
  
  Route::post('/removeCompany', [App\Http\Controllers\CompanyController::class, 'removeCompany']);
  
  Route::post('/updateCompany', [App\Http\Controllers\CompanyController::class, 'updateCompany']);
  
  Route::post('/addEmployee', [App\Http\Controllers\EmployeeController::class, 'addEmployee']);
  
  Route::post('/removeEmployee', [App\Http\Controllers\EmployeeController::class, 'removeEmployee']);
  
  Route::post('/updateEmployee', [App\Http\Controllers\EmployeeController::class, 'updateEmployee']);
});
