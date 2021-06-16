<?php

namespace App\Http\Controllers\Api;
use App\Models\Test;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class TestController extends Controller
{
    public function getAllTest(Request $request){
        $tests = Test::get()->toJson(JSON_PRETTY_PRINT);
        return response($tests, 200);
    }
   public function createTest(Request $request){
       $request->validate([
           'test_name' =>'required',
       ]);

       $test = new Test;
       $test->test_name = $request->input('test_name');
       $test->price = $request->input('price');

       $test->save();

       return response()->json([
           "message"=>"Test created success"
       ], 201);

   }
   public function getTest($id){
    if(Test::where('id',$id)->exists()){
        $tests = Test::where('id', $id)->get()->toJson(JSON_PRETTY_PRINT);
        return response($tests, 200);
    }else {
        return response()->json([
          "message" => "Test record not found"
        ], 404);
      }
  } 
  public function updateTest(Request $request,$id){
      if(Test::where('id',$id)->exists()){
          $tests =Test::find($id);

          $tests->test_name = is_null($request->test_name) ? $ $tests->test_name : $request->test_name;
          $tests->price = is_null($request->price) ? $ $tests->price : $request->price;

          $tests->save();
          return response()->json([
            "message" => "records updated successfully"
        ],200);
    }else {
        return response()->json([
          "message" => "Test not found"
        ], 404);
      }
      

  }
  public function partialTest(Request $request,$id){
    if(Test::where('id',$id)->exists()){
        $tests =Test::find($id);

        $tests->test_name = is_null($request->test_name) ? $ $tests->test_name : $request->test_name;
        $tests->price = is_null($request->price) ? $ $tests->price : $request->price;

        $tests->save();
        return response()->json([
          "message" => "records updated successfully"
      ],200);
  }else {
      return response()->json([
        "message" => "Test not found"
      ], 404);
    }
    

}
  public function deleteTest($id){
    if(Test::where('id', $id)->exists()) {
        $test = Test::find($id);
        $test->delete();

        return response()->json([
          "message" => "records deleted"
        ], 202);
      } else {
        return response()->json([
          "message" => "Test not found"
        ], 404);
      }
}
}
