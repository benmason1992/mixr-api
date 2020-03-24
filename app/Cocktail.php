<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Ingredient;
use Illuminate\Support\Collection;

class Cocktail extends Model
{
    public function ingredients() {
        return $this->belongsToMany(Ingredient::class);
    }

<<<<<<< HEAD
    public function setIngredients(array $ingredients) {
        // update pivot table with tag ids
			$this->ingredients()->sync($ingredients->pluck('id')->all());
			return $this;
    }
=======
    public function setIngredients(Collection $ingredients)
		{
			// update pivot table with tag ids
			$this->ingredients()->sync($ingredients->pluck('id')->all());
			return $this;
		}

>>>>>>> 391d356d58488aa28f9a350732a7ec2330f081c1
}
