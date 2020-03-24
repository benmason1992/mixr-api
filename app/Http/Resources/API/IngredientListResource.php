<?php

namespace App\Http\Resources\API;

use Illuminate\Http\Resources\Json\JsonResource;

class IngredientListResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray(Collection $ingredients)
    {
        return $ingredients->map(function ($ingredient) {
            return [
                "id" => $ingredient->id,
                "ingredient" => $ingredient->ingredient,
            ];
        });
    }
}
