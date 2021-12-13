<?php

namespace App\Http\Controllers;
use App\student;
use Illuminate\Http\Request;

class studentController extends Controller
{
    public function save(Request $request)
    {
       
        echo("hello save");
        $student= new student;
        $student->name="jhjh"; 
        $student->userId="12121212";
        $student->date="11-22-33";
        $student->age_in_october="14";
        $student->city="cc";
        $student->year_of_graduated="1222";
        $student->phone="01";
        $student->address="bb";
        $student->total_grade="1111";
        echo $student->save();
    }
}
