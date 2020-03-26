<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Collection;
use App\Ingredient;

class Cocktail extends Model
{
	protected $fillable = ["name", "method", "image"]; // sets which fields can be provided by the user/API request

	// protected $hidden = ['pivot'];

    public function ingredients() {

        return $this->belongsToMany(Ingredient::class);
    }

    public function setIngredients($ingredients)
		{
			
			$ingredientCollection = new Collection($ingredients);
			// dd($ingredientCollection->pluck('id')->all());
			// update pivot table with tag ids
			$this->ingredients()->sync($ingredientCollection);
			return $this;
		}

}
