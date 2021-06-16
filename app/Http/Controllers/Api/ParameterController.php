<?php

namespace App\Http\Controllers\Api;
use App\Models\Parameter;
use App\Models\Test;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class ParameterController extends Controller
{
    public function getAllParameter(Request $request){
       $parameter = Parameter::get()->toJson(JSON_PRETTY_PRINT);
        return response($parameter, 200);
    }
   public function createParameter(Request $request){
       $request->validate([
           'parameter_name' =>'required',
       ]);

       $parameter = new Parameter;
       $parameter->test_id=$request->input('test_id');
       $parameter->parameter_name = $request->input('parameter_name');
       $parameter->unit = $request->input('unit');
       $parameter->min_range = $request->input('min_range');
       $parameter->max_range = $request->input('max_range');


       $parameter->save();

       return response()->json([
           "message"=>"Parameter created success"
       ], 201);

   }
   public function getParameter($id){
    if(Parameter::where('id',$id)->exists()){
       $parameter = Parameter::where('id', $id)->get()->toJson(JSON_PRETTY_PRINT);
        return response($parameter, 200);
    }else {
        return response()->json([
          "message" => "Parameter record not found"
        ], 404);
      }
  } 
  public function updateParameter(Request $request,$id){
      if(Parameter::where('id',$id)->exists()){
         $parameter =Parameter::find($id);
         $parameter->test_id = is_null($request->test_id) ? $parameter->test_id : $request->test_id;
         $parameter->parameter_name = is_null($request->parameter_name) ? $parameter->parameter_name : $request->parameter_name;
         $parameter->unit = is_null($request->unit) ? $parameter->unit : $request->unit;
         $parameter->min_range= is_null($request->min_range) ? $parameter->min_range : $request->min_range;
         $parameter->max_range= is_null($request->max_range) ? $parameter->max_range : $request->max_range;
         $parameter->save();
          return response()->json([
            "message" => "records updated successfully"
        ],200);
    }else {
        return response()->json([
          "message" => "Parameter not found"
        ], 404);
      }
      

  }
  public function deleteParameter($id){
    if(Parameter::where('id', $id)->exists()) {
        $parameter = Parameter::find($id);
        $parameter->delete();

        return response()->json([
          "message" => "records deleted"
        ], 202);
      } else {
        return response()->json([
          "message" => "Parameter not found"
        ], 404);
      }
}

public function createAllParameter(Request $request){
 
  $test = new Test;
  $test->test_name = $request->input('test_name');
  $test->price = $request->input('price');
  $test->save();
  $test_id=$test->id;

  $parameter = new Parameter;
  $parameter->test_id= $test_id;
  $parameter->parameter_name = $request->input('parameter_name');
  $parameter->unit = $request->input('unit');
  $parameter->min_range = $request->input('min_range');
  $parameter->max_range = $request->input('max_range');
 
  $parameter->save();

  return response()->json([
    "message"=>"Test store success"
], 201);

}

public function testParameter($id){
  if(Parameter::where('test_id',$id)->exists()){
     $parameter = Parameter::where('test_id', $id)->get()->toJson(JSON_PRETTY_PRINT);
      return response($parameter, 200);
  }else {
      return response()->json([
        "message" => "Parameter record not found"
      ], 404);
    }
} 
}
