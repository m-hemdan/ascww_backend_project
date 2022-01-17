<?php

namespace App\Http\Controllers;
use App\projects;
use Illuminate\Http\Request;

class projectsController extends Controller
{
    //
    public function getAllProjects()
    {
        $AllProjects=projects::all();
        return $AllProjects;
    }
}
