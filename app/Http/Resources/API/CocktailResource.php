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
            "id" => $this->id,
            "name" => $this->name,
            "method" => array_map(function($sentence) {
                return strtoupper($sentence[0]) . substr($sentence, 1);
            },preg_split("/[.,]\s/", $this->method)),
            "image" => $this->image,
            "ingredients" => $this->ingredients->map(function ($ingredient) {
                return new IngredientResource($ingredient);
            })
            ];
    }
}
