<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminte\Support\Collection;
use App\Cocktail;

class Ingredient extends Model
{
    protected $fillable = ["ingredient"];
    public $timestamps = false;
    protected $hidden = ['pivot', 'created_at', 'updated_at', 'id'];
    public function cocktails() {
        return $this->belongsToMany(Cocktail::class);
    }
}
