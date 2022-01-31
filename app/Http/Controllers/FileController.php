<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class FileController extends Controller
{
    public function savePdf(Request $request){
     $file =$request->file('key1');
    if($file)
    {  $name =time().'.'. $file->getClientOriginalName();
       $destinationPath = public_path('\assets');
       $file->move($destinationPath, $name);
       return $name ;
    }
    else
    return "no here";
 
}           
}
