<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;

use App\Http\Controllers\API\BaseController as BaseController;

use Illuminate\Http\Request;
use Validator;
use App\Models\User;
use Illuminate\Support\Facades\Auth;

class RegisterController extends BaseController
{
    //

    public function mamuuserregister(Request $request){

        $validator = Validator::make($request->all(),[
            'name' =>'required',
            'email'=>'required|email',
            'password'=>'required',
        ]);

       if($validator->fails()){
        return $this->sendError("Validation Error",$validator->errors());
       }

       $userinput = $request->all();

       $usersavedone=User::create($userinput);
       $sucesss['token'] = $usersavedone->createToken("MyApp")->plainTextToken;
       $sucesss['name'] = $usersavedone->name;

       return $this->sendResponse($sucesss,"Mamur User Successfully Done");




    }

    public function mamulogin(Request $request)
    {
        if(Auth::attempt(['email' => $request->email, 'password' =>$request->password])){
           $mamuuser =  Auth::user();
           $sucesss['token'] = $mamuuser->createToken("MyApp")->plainTextToken;
           $sucesss['name'] = $mamuuser->name;
           return $this->sendResponse($sucesss,"Mamur User Successfully Login");

        }
        else{
            return $this->sendError("Validation Error",['error'=>"dose not match"]);
        }
    }
}
