<?php

namespace App\Http\Controllers\Api;
use App\Models\Patient;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class PatientController extends Controller
{
    public function getAllPatient() {
        $patient = Patient::get()->toJson(JSON_PRETTY_PRINT);
        return response($patient, 200);
      }


      public function createPatient(Request $request) {
        $request->validate([
            

        ]);

       $patient = new Patient;
       $patient->prefix = $request->input('prefix');
       $patient->first_name= $request->input('first_name');
       $patient->middle_name = $request->input('middle_name');
       $patient->last_name = $request->input('last_name');
       $patient->gender = $request->input('gender');
       $patient->age = $request->input('age');
       $patient->contact = $request->input('contact');
       $patient->address= $request->input('address');
       $patient->patient_id = $request->input('patient_id');
       $patient->email = $request->input('email');
     
       $patient->save();
       return response()->json([
           "message" => "Patient record created"
       ], 201);
    }

    public function getPatient($id) {
        if (Patient::where('id', $id)->exists()) {
            $patient = Patient::where('id', $id)->get()->toJson(JSON_PRETTY_PRINT);
            return response($patient, 200);
          } else {
            return response()->json([
              "message" => "Patient not found"
            ], 404);
          }
      }
    public function updatePatient(Request $request, $id) {

        if (Patient::where('id', $id)->exists()) {
            $patient = Patient::find($id);
    
            $patient->prefix = $request->prefix;
            $patient->first_name = $request->first_name;
            $patient->middle_name  = $request->middle_name;
            $patient->last_name  = $request->last_name;
            $patient->gender = $request->gender;
            $patient->age =  $request->age;
            $patient->contact=  $request->contact;
            $patient->address =  $request->address;
            $patient->patient_id =  $request->patient_id;
            $patient->email =$request->email ;
            if($patient->save()){
                return response()->json([
                    "message" => "Patient records updated successfully"
                ], 200);
            }  
          } else {
            return response()->json([
              "message" => "Patient not found"
            ], 404);
          }

       
    }

    public function deletePatient($id) {
        if(Patient::where('id', $id)->exists()) {
            $patient = Patient::find($id);
            $patient->delete();
    
            return response()->json([
              "message" => "records deleted"
            ], 202);
          } else {
            return response()->json([
              "message" => "Patient not found"
            ], 404);
          }
      }
}
