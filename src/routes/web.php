<?php

use App\Models\Module;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    $modules = Module::all();

    return view('welcome', compact('modules'));
});
