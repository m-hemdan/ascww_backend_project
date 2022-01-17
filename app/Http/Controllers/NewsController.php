<?php

namespace App\Http\Controllers;
use App\news;
use App\projects;
use Illuminate\Http\Request;

class NewsController extends Controller
{
    public function getAllNews()
    {
        $AllNews=news::all();
        return $AllNews;
    }
    public function backItemFun($selectedItem){
        //search in news table "selectedItem
     $selectednewSearch=news::where('item', 'like', '%' . $selectedItem . '%')
     ->orwhere('details', 'like', '%' . $selectedItem . '%')
     ->distinct()->get();
  
     //search 
     $selectedSearchProjects=projects::where('item', 'like', '%' . $selectedItem . '%')
     ->orwhere('details', 'like', '%' . $selectedItem . '%')
     ->distinct()->get();

  //  $mergetable=$selectedSearch->unioneAll($selectedSearchSearch)->get();
     return json_encode(array_merge(json_decode($selectednewSearch, true),json_decode($selectedSearchProjects, true)));
  
    }
}
