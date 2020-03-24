<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminte\Support\Collection;
use App\Ingredient;

class Cocktail extends Model
{
    public function ingredients() {
        return $this->belongsToMany(Ingredient::class);
    }

    public function setIngredients(collection $ingredients) {
        // update pivot table with tag ids
			$this->ingredients()->sync($ingredients->pluck('id')->all());
			return $this;
    }
}
