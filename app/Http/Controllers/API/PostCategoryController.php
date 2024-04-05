<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;

use App\Http\Controllers\API\BaseController as BaseController;
use Illuminate\Http\Request;
use Validator;
use App\Models\PostCategory;
use Illuminate\Support\Facades\Auth;

use App\Http\Resources\PostCategory as PostCategoryResource;


class PostCategoryController extends BaseController
{
    //

    public function index(){
        $PostCategoryList = PostCategory::all();
        return $this->sendResponse(PostCategoryResource::collection($PostCategoryList),"PostCategoryList Retrieved");


    }

    public function store(Request $request){
        $catagoryinput = $request->all();

        $catagoryinputsave =  PostCategory::create($catagoryinput);

        return $this->sendResponse(new PostCategoryResource($catagoryinputsave),"Post Category Created Successfully Done");


    }

    public function show($id){

        $getcatebyid  =  PostCategory::findOrFail($id);

        if(is_null($getcatebyid)){
           return $this->sendError("sorry not Found");
        }

        return $this->sendResponse(new PostCategoryResource($getcatebyid),"Post Category Created Successfully Found");




    }

    public function update(Request $request, $id){

        $datacheck = $request->validate([
            'name' => "required",
            'slug' => "required",
        ]);

       $getcatebyid =  PostCategory::findOrFail($id);

       $data =  $getcatebyid->update($datacheck);

        return response()->json(['message' => "Data Update Done"], 200);


    }
    public function destroy($id){

        $getcatebyid =  PostCategory::findOrFail($id);

        $getcatebyid->delete();
        return $this->sendResponse([],"Delete Done");

    }
}
