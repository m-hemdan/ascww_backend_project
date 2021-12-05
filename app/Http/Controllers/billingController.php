<?php

namespace App\Http\Controllers;
use App\billing;
use Illuminate\Http\Request;

class billingController extends Controller
{
    public function getAllBill()
    {
    $billAll=billing::all();
    return $billAll;
    }

    public function search($Bills_AccountNum)
    {
        $selectedBill = billing::where('Bills_AccountNum', $Bills_AccountNum)
                            //    ->where('Bills_Region_Name', $Bills_Region_Name)
                                ->first();
        return $selectedBill;
    }
}
