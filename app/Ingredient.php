<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Cocktail;

class Ingredient extends Model
{
    public $timestamps = false;
<<<<<<< HEAD
    
=======

>>>>>>> 391d356d58488aa28f9a350732a7ec2330f081c1
    public function cocktails() {
        return $this->belongsToMany(Cocktail::class);
    }
}
