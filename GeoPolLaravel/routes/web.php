<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return "Home";
});

/*Route::get('/inversions', 'InversionController@test_queries');*/

Route::get('/inversions', 'InversionController@index');
Route::get('/beneficiarios', 'BeneficiarioController@index');

Route::get('/usuarios', 'UserController@index');
Route::get('/proyecto', 'ProyectoController@index');

Route::get('/usuarios/{id}', 'UserController@show') ->where('id', '\d+');

Route::get('/usuarios/nuevo', 'UserController@create');

Route::get('/saludo/{name}/{nickname?}', 'WelcomeUserController@index');

