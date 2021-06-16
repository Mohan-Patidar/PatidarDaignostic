<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
header('Access-Control-Allow-Origin: http://localhost:8080');
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/verified-only', function(Request $request){

    dd('your are verified', $request->user()->name);
})->middleware('auth:api','verified');

Route::post('register', 'App\Http\Controllers\Api\AuthController@register');
Route::post('login', 'App\Http\Controllers\Api\AuthController@login')->name('login');


Route::post('/password/email', 'App\Http\Controllers\Api\ForgotPasswordController@sendResetLinkEmail');
Route::post('/password/reset', 'App\Http\Controllers\Api\ResetPasswordController@reset');

Route::get('/email/resend', 'App\Http\Controllers\Api\VerificationController@resend')->name('verification.resend');
Route::get('/email/verify/{id}/{hash}', 'App\Http\Controllers\Api\VerificationController@verify')->name('verification.verify');
//patient crud
Route::get('patients/', 'App\Http\Controllers\Api\PatientController@getAllPatient');
Route::get('patients/{id}', 'App\Http\Controllers\Api\PatientController@getPatient');
Route::post('patients', 'App\Http\Controllers\Api\PatientController@createPatient');
Route::put('patients/{id}', 'App\Http\Controllers\Api\PatientController@updatePatient');
Route::delete('patients/{id}','App\Http\Controllers\Api\PatientController@deletePatient');

//doctor crud
Route::get('doctors/', 'App\Http\Controllers\Api\DoctorController@getAllDoctor');
Route::get('doctors/{id}', 'App\Http\Controllers\Api\DoctorController@getDoctor');
Route::post('doctors', 'App\Http\Controllers\Api\DoctorController@createDoctor');
Route::put('doctors/{id}', 'App\Http\Controllers\Api\DoctorController@updateDoctor');
Route::delete('doctors/{id}','App\Http\Controllers\Api\DoctorController@deleteDoctor');

//test crud
Route::get('tests/', 'App\Http\Controllers\Api\TestController@getAllTest');
Route::get('tests/{id}', 'App\Http\Controllers\Api\TestController@getTest');
Route::post('tests', 'App\Http\Controllers\Api\TestController@createTest');
Route::put('tests/{id}', 'App\Http\Controllers\Api\TestController@updateTest');
Route::Patch('tests/{id}','App\Http\Controllers\Api\TestController@partialTest');
Route::delete('tests/{id}','App\Http\Controllers\Api\TestController@deleteTest');

//test parameter
Route::get('parameter/', 'App\Http\Controllers\Api\ParameterController@getAllParameter');
Route::get('parameter/{id}', 'App\Http\Controllers\Api\ParameterController@getParameter');
Route::post('parameter', 'App\Http\Controllers\Api\ParameterController@createParameter');
Route::put('parameter/{id}', 'App\Http\Controllers\Api\ParameterController@updateParameter');
Route::delete('parameter/{id}','App\Http\Controllers\Api\ParameterController@deleteParameter');

Route::post('testparameter/', 'App\Http\Controllers\Api\ParameterController@createAllParameter');
Route::get('testallparameter/{id}', 'App\Http\Controllers\Api\ParameterController@testParameter');


Route::get('totaltest', 'App\Http\Controllers\Api\DashboardController@totalTest');

//report crud
Route::get('reports/', 'App\Http\Controllers\Api\ReportController@getReportData');
Route::get('reports/{id}', 'App\Http\Controllers\Api\ReportController@getReport');
Route::post('reports', 'App\Http\Controllers\Api\ReportController@createReport');
Route::put('reports/{id}', 'App\Http\Controllers\Api\ReportController@updateReport');
Route::delete('reports/{id}','App\Http\Controllers\Api\ReportController@deleteReport');

//user

Route::get('user/{id}', 'App\Http\Controllers\Api\UserController@getUser');
Route::put('user/{id}', 'App\Http\Controllers\Api\UserController@updateUser');