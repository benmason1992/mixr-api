<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CocktailIngredients extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create("cocktail_ingredient", function (Blueprint $table) { // still have an id column
            $table->bigIncrements("id");
                // create the article id column and foreign key
            $table->bigInteger("cocktail_id")->unsigned();
            $table->foreign("cocktail_id")->references("id")
            ->on("cocktails")->onDelete("cascade");
                // create the tag id column and foreign key
            $table->bigInteger("ingredient_id")->unsigned();
            $table->foreign("ingredient_id")->references("id")
            ->on("ingredients")->onDelete("cascade");
            });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists("cocktail_ingredient");
    }
}
