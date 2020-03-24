<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Ingredient;
use Illuminate\Support\Collection;

class Cocktail extends Model
{
	protected $fillable = ["name", "method", "image"]; // sets which fields can be provided by the user/API request

    public function ingredients() {
        return $this->belongsToMany(Ingredient::class);
    }

    public function setIngredients(Collection $ingredients)
		{
			// update pivot table with tag ids
			$this->ingredients()->sync($ingredients->pluck('id')->all());
			return $this;
		}

}
