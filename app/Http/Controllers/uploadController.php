<?php

namespace App\Http\Controllers;
use App\news;
use Illuminate\Http\Request;

class uploadController extends Controller
{
    public function handle(Request $request)
    {
       $pathToFile= $request->file('image')->store('images','public');
       return $pathToFile;

    }
    public function insert(){
        $urlData = getURLList();
        return view('stud_create');
    }
    public function create(Request $request){
      /*  $rules = [
			'first_name' => 'required|string|min:3|max:255',
			'city_name' => 'required|string|min:3|max:255',
			'email' => 'required|string|email|max:255'
		];
		$validator = Validator::make($request->all(),$rules);
		if ($validator->fails()) {
			return redirect('insert')
			->withInput()
			->withErrors($validator);
		}*/
	//	else{
            $data = $request->input();
			try{
				$news = new news;
				$news->mainImg="aaa";
                $news->item = $data['item'];
                $news->link = $data['link'];
		    	$news->details = $data['details'];
				$news->img1 = "img1";
				$news->img2 = "img2";
				$news->img3 = "img3";
				$news->save();
				echo "yes insert succ";
				//return redirect('insert')->with('status',"Insert successfully");
			}
			catch(Exception $e){
				echo "sorry field";
			}
		//}
    }
}
