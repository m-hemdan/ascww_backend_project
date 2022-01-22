<?php

namespace App\Http\Controllers;
use App\news;
use App\projects;
use App\Tender;
use App\Search;
use App\student;
use Illuminate\Http\Request;


class NewsController extends Controller
{
    public function getAllNews()
    {
        $AllNews=news::all();
        return $AllNews;
    }
    public function backItemFun($selectedItem){
        //search in news table "selectedItem"
     $selectednewSearch=news::where('item', 'like', '%' . $selectedItem . '%')
     ->orwhere('details', 'like', '%' . $selectedItem . '%')
     ->distinct()->get();
  
     //search in projects table "selectedItem"
     $selectedSearchProjects=projects::where('item', 'like', '%' . $selectedItem . '%')
     ->orwhere('details', 'like', '%' . $selectedItem . '%')
     ->distinct()->get();

     $selectedSearchTenders=Tender::where('item', 'like', '%' . $selectedItem . '%')
     ->orwhere('details', 'like', '%' . $selectedItem . '%')
     ->distinct()->get();
     $selectedSearchSubmenu=Search::where('item', 'like', '%' . $selectedItem . '%')
     ->distinct()->get();

  //  $mergetable=$selectedSearch->unioneAll($selectedSearchSearch)->get();
     return json_encode(array_merge(json_decode($selectednewSearch, true),json_decode($selectedSearchProjects, true)
     ,json_decode($selectedSearchTenders,true),json_decode($selectedSearchSubmenu,true)));
  
    }
}
