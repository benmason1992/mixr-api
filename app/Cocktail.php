<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Ingredient;

class Cocktail extends Model
{
    public function ingredients() {
        return $this->belongsToMany(Ingredient::class);
    }

    public function setIngredients(array $ingredients) :
}
