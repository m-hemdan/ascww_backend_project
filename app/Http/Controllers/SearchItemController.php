<?php

namespace App\Http\Controllers;
use App\Search;
use Illuminate\Http\Request;

class SearchItemController extends Controller
{
    public function getAllItem()
    {
    $items=Search::all();
    return $items;
    }

}
