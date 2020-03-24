<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Cocktail;

class Ingredient extends Model
{
    public $timestamps = false;
    
    public function ingredients() {
        return $this->belongsToMany(Cocktail::class);
    }
}
