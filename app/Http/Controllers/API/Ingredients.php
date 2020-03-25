<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Resources\API\IngredientResource;
use App\Http\Resources\API\IngredientListResource;
use App\Http\Requests\API\IngredientRequest;



class Ingredients extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return IngredientListResource::collection(Ingredient::all());
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(IngredientRequest $request)
    {
        $data = $request->only(["ingredient"]);        
        $ingredient = Ingredient::create($data);
        return new IngredientResource($ingredient);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Ingredient $ingredient)
    {
        return $ingredient->cocktails;
        
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(IngredientRequest $request)
    {
        $data = $request->only(["ingredient"]);        
        $cocktail = Cocktail::create($data);
        return new CocktailResource($cocktail);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Ingredient $ingredient)
    {
        $ingredient->delete();
        return response(null, 204);
    }
}
