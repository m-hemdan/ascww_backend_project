<?php

namespace App\Http\Controllers;
use App\student;
use Illuminate\Http\Request;

class studentController extends Controller
{
    public function save(Request $request)
    {
        $student= new student;
        $student->name=$request->name; 
        $student->userId=$request->userId;
        $student->date=$request->date;
        $student->age_in_october=$request->age_in_october;
        $student->city=$request->city;
        $student->year_of_graduated=$request->year_of_graduated;
        $student->phone=$request->phone;
        $student->address=$request->address;
        $student->total_grade=$request->total_grade;
        if( $student->save())
        {
            echo $student->name;
        }
        else
        {
            echo "sorry" ;
        }
    }
    
}
