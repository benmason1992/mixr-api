<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Cocktail;
use App\Http\Resources\API\CocktailResource;
use App\Http\Resources\API\CocktailListResource;
use App\Http\Requests\API\CocktailRequest;

class Cocktails extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return CocktailListResource::collection(Cocktail::all());
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(CocktailRequest $request)
    {
        $data = $request->only(["name", "method", "image"]);        
        $cocktail = Cocktail::create($data);
        var_dump($data);
        return new CocktailResource($cocktail);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Cocktail $cocktail)
        {
        // return the resource
        return new CocktailResource($cocktail);
        }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(CocktailRequest $request, Cocktail $cocktail)
    {
        $data = $request->only(["name", "method", "image"]);
        dd($data);
        $cocktail->fill($data)->save();
        
        return new CocktailResource($cocktail);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Cocktail $cocktail)
    {
        $cocktail->delete();
        return response(null, 204);
    }
}
