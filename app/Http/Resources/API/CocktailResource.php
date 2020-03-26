<?php

namespace App\Http\Resources\API;

use Illuminate\Http\Resources\Json\JsonResource;
use App\Http\Resources\API\IngredientResource;

// use App\Http\Resources\API\IngredientListResource;


class CocktailResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            "name" => $this->name,
            "method" => $this->method, 
            "image" => $this->image,
            "ingredients" => $this->ingredients->map(function ($ingredient) {
                return new IngredientResource($ingredient);
            })
            ];
    }
}
