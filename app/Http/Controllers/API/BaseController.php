<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class BaseController extends Controller
{
    // Common Function

    public function sendResponse($result,$message){

        $data = [
            'success' => true,
            'data' => $result,
            'message' => $message
        ];

         return response()->json($data, 200);
    }

    public function sendError($erro,$errorMessge=[]){
        $data = [
            'success' => false,
            'message' => $errorMessge
        ];



         return response()->json($data );
    }
}
