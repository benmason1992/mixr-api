<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Ingredient;

class Cocktail extends Model
{
    public function ingredients() {
        return $this->belongsToMany(Ingredient::class);
    }

    public function setIngredients(array $ingredients) {
        // update pivot table with tag ids
			$this->ingredients()->sync($ingredients->pluck('id')->all());
			return $this;
    }
}
