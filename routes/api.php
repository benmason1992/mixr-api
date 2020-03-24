<?php

namespace App\Http\Controllers\API;
use App\Http\Requests\API\CocktailRequest;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\Cocktails;

Route::group(["prefix" => "cocktails"], function () {
    Route::get("", [Cocktails::class, "index"]);
<<<<<<< HEAD
=======

>>>>>>> 391d356d58488aa28f9a350732a7ec2330f081c1
    Route::group(["prefix" => "{cocktail}"], function () {
        Route::get("", [Cocktails::class, "show"]);
        Route::put("", [Cocktails::class, "update"]);
    });
<<<<<<< HEAD
=======

>>>>>>> 391d356d58488aa28f9a350732a7ec2330f081c1
});


