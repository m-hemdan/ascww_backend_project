<?php

namespace App\Http\Controllers;
use App\student;
use Illuminate\Http\Request;

class studentController extends Controller
{
    public function insert(Request $request)
    {
    
        $student= new student;
        $student->name=$request->name;
        $student->address=$request->address;
        $student->save();
        echo $student->save();
        if($student->save())
        {
            return ['success'=>$student];

        }
        else
        {
            return ['success'=>'operation failed'];

        }

    }
}
