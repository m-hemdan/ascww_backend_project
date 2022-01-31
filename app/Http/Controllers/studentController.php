<?php

namespace App\Http\Controllers;
use App\student;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

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
        $student->fileName=time().'.'.$request->nameFile;
        if( $student->save())
        {
            echo $student->name;
        }
        else
        {
            echo "sorry" ;
        }
    }
    public function savePdf(Request $request){
      
        $file =$request->file('key1');
       if($file)
       {  $name =time().'.'. $file->getClientOriginalName();
          $destinationPath = public_path('assets/');
          $file->move($destinationPath, $name);
       
    
          return $name ;
       }
       else
       return "no here";
    
   }   
   public function showAllStudent()
   {
       $data=student::all();
       return view("student",compact('data'));
   }
   public function downloadPdfFile(Request $request,$file)
   {
    return response()->download(public_path('assets/'.$file));
}
    
}
