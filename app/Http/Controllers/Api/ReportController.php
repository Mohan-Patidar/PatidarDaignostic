<?php

namespace App\Http\Controllers\Api;
use App\Models\Patient;
use App\Models\Report;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class ReportController extends Controller
{
    public function getReportData() {
        $report = Report::get()->toJson(JSON_PRETTY_PRINT);
        return response($report, 200);
      }

    public function createReport(Request $request) {
        $request->validate([
            

        ]);

       $report = new Report;
       $report ->patients_id = $request->input('patients_id');
       $report->name= $request->input('name');
       $report->test = json_encode($request->input('test'));

       $report->save();
       return response()->json([
           "message" => "Report record created"
       ], 201);
    }
    public function getReport($id) {
        if (Report::where('id', $id)->exists()) {
            $report = Report::where('id', $id)->get()->toJson(JSON_PRETTY_PRINT);
            return response($report, 200);
          } else {
            return response()->json([
              "message" => "Report not found"
            ], 404);
          }
      }
      public function updateReport(Request $request, $id) {

        if (Report::where('id', $id)->exists()) {
            $report = Report::find($id);
    
            $report->patients_id = $report->patients_id;
            $report->name= $report->name;
            $report->test = $request->input('test');
            $report->parameter_data = $request->input('parameter_data');
           
            if($report->save()){
                return response()->json([
                    "message" => "Report records updated successfully"
                ], 200);
            }  
          } else {
            return response()->json([
              "message" => "Report not found"
            ], 404);
          }

       
    }
    public function deleteReport($id) {
        if(Report::where('id', $id)->exists()) {
            $report = Report::find($id);
            $report->delete();
    
            return response()->json([
              "message" => "Report deleted"
            ], 202);
          } else {
            return response()->json([
              "message" => "Report not found"
            ], 404);
          }
      }


}
