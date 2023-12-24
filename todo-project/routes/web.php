<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::post('/add-task', [App\Http\Controllers\ToDoListController::class, 'add'])->name('add-task');
Route::delete('/tasks/{id}', [App\Http\Controllers\ToDoListController::class, 'delete']);