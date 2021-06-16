<?php

namespace App\Http\Controllers\Api;
use App\Models\Doctor;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class DoctorController extends Controller
{


    public function getAllDoctor() {
        $doctor = Doctor::get()->toJson(JSON_PRETTY_PRINT);
        return response($doctor, 200);
    }

    public function createDoctor(Request $request){
        $request->validate([
            'name' => 'required',
            ]);

            $doctor = new Doctor;
            $doctor->name = $request->input('name');
            $doctor->ocupation = $request->input('ocupation');
            $doctor->contact = $request->input('contact');

            $doctor->save();

            return response()->json([
                "message" => "Doctor record created"
            ],201);

    }

    public function getDoctor($id){
        if(Doctor::where('id',$id)->exists()){
            $doctor = Doctor::where('id', $id)->get()->toJson(JSON_PRETTY_PRINT);
            return response($doctor, 200);
        }else {
            return response()->json([
              "message" => "Doctor record not found"
            ], 404);
          }

    }

    public function updateDoctor(Request $request ,$id){
        if (Doctor::where('id',$id)->exists()){
            $doctor = Doctor::find($id);

            $doctor->name = is_null($request->name) ? $ $doctor->name : $request->name;
            $doctor->ocupation = is_null($request->ocupation) ? $ $doctor->ocupation : $request->ocupation;
            $doctor->contact = is_null($request->contact) ? $ $doctor->contact : $request->contact;

            $doctor->save();

            return response()->json([
                "message" => "records updated successfully"
            ],200);
        }else {
            return response()->json([
              "message" => "Doctor not found"
            ], 404);
          }

    }

    public function deleteDoctor($id){
        if(Doctor::where('id', $id)->exists()) {
            $doctor = Doctor::find($id);
            $doctor->delete();
    
            return response()->json([
              "message" => "records deleted"
            ], 202);
          } else {
            return response()->json([
              "message" => "Doctor not found"
            ], 404);
          }
    }
}
