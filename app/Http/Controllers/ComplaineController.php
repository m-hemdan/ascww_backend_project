<?php

namespace App\Http\Controllers;
use App\complaine;
use Illuminate\Http\Request;

class ComplaineController extends Controller
{
    public function saveX(Request $request)
    {
       
       
        $complaine= new complaine;
        $complaine->name=$request->name; 
        $complaine->phone=$request->phone;
        $complaine->email=$request->email;
        $complaine->complaineText=$request->complaineText;
    
        if( $complaine->save())
        {
            echo "yes";
        }
        else
        {
            echo "sorry" ;
        }
    }
}
