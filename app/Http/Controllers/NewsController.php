<?php

namespace App\Http\Controllers;
use App\news;
use Illuminate\Http\Request;

class NewsController extends Controller
{
    public function getAllNews()
    {
    $AllNews=news::all();
    return $AllNews;
    }
}
