<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\Cocktails;

Route::group(["prefix" => "cocktails"], function () {
    
    Route::get("", [Cocktails::class, "index"]);

});

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
