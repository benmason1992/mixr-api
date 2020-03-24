<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Cocktail;
use App\Http\Resources\API\CocktailResource;
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
        return Cocktail::all();
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $data = $request->all();
        // store article in variable
        $cocktail = Cocktail::create($data);
        // return the resource
        return new CocktailResource($cocktail);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
<<<<<<< HEAD
    public function show($id)
    {
        return Cocktail::find($id);
    }
=======
    public function show(Cocktail $cocktail)
        {
        // return the resource
        return new CocktailResource($cocktail);
        }
>>>>>>> 391d356d58488aa28f9a350732a7ec2330f081c1

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(CocktailRequest $request, Cocktail $cocktail)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
