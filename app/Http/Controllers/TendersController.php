<?php

namespace App\Http\Controllers;
use App\Tender;
use Illuminate\Http\Request;

class TendersController extends Controller
{
    
    public function getAllTenders()
    {
        $AllTender=Tender::all();
        return $AllTender;
    }
}
