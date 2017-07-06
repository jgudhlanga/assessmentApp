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
        return view('welcome');
    });
    
Route::get('/register', [
    'uses' => 'UserController@getRegister',
    'as' => 'getRegister',
]);
Route::post('/register', [
    'uses' => 'UserController@postRegister',
    'as' => 'postRegister'
]);
Route::get('/login', [
    'uses' => 'UserController@getLogin',
    'as' => 'getLogin'
]);
Route::post('/login', [
    'uses' => 'UserController@login',
    'as' => 'login'
]);
Route::get('/logout', [
    'uses' => 'UserController@getLogout',
    'as' => 'getLogout'
])->middleware('auth');

Route::get('/dashboard', [
    'uses' => 'MemberController@getMembers',
    'as' => 'dashboard'
])->middleware('auth');

Route::get('/add-member', [
    'uses' => 'MemberController@getAddMember',
    'as' => 'getAddMember'
])->middleware('auth');

Route::get('/edit-member/{id}', [
    'uses' => 'MemberController@getEditMember',
    'as' => 'getEditMember'
])->middleware('auth');

Route::post('/member', [
    'uses' => 'MemberController@postMember',
    'as' => 'postMember'
])->middleware('auth');

Route::post('/update-member/{id}', [
    'uses' => 'MemberController@updateMember',
    'as' => 'updateMember'
])->middleware('auth');

Route::get('/profile.view/{id}', [
    'uses' => 'MemberController@showMember',
    'as' => 'profile.view'
])->middleware('auth');

//delete member
Route::get('/delete-member/{id}', [
    'uses' => 'MemberController@deleteMember',
    'as' => 'delete.member'
])->middleware('auth');