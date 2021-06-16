<?php

namespace App\Http\Controllers\Api;
use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    public function getAllUser() {
       
    }

    public function getUser($id){
        if(User::where('id',$id)->exists()){
            $user = User::where('id', $id)->get()->toJson(JSON_PRETTY_PRINT);
            return response($user, 200);
        }else {
            return response()->json([
              "message" => "User record not found"
            ], 404);
          }

    }
    public function updateUser(Request $request ,$id){
        if (User::where('id',$id)->exists()){
             $user = User::find($id);

             $user->name = is_null($request->name) ? $  $user->name : $request->name;
             $user->email = is_null($request->email) ? $  $user->email : $request->email;
             $user->dob = is_null($request->dob) ? $  $user->dob : $request->dob;
             $user->occupation = is_null($request->occupation) ? $  $user->occupation : $request->occupation;
             $user->contact_no = is_null($request->contact_no) ? $  $user->contact_no : $request->contact_no;

             $user->save();

            return response()->json([
                "message" => "records updated successfully"
            ],200);
        }else {
            return response()->json([
              "message" => "User not found"
            ], 404);
          }

    }

}
