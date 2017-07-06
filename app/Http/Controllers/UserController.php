<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\User;

class UserController extends Controller
{
    public function getRegister(Request $request){
       
        return view('users.register');
    }
    
    public function postRegister(Request $request){
        
        //validate request
        $this->validate($request, [
            'name'=>'required',
            'surname'=>'required',
            'email' => 'required|unique:users',
            'password'=>'required|min:4',
        ]);
        $params = $request->all();
        $params['password'] = bcrypt($request['password']);
        $user = new User($params);
        $user->save();
        if($user->save()){
            
            //Authenticate the uset and redirect to the main page to view members
            Auth::login($user);
            return redirect()->route('dashboard');
        }
    }
    
    public function getLogin(Request $request){
        return view('users.login');
    }
    
    public function login(Request $request){
        
        //validate request
        $this->validate($request, [
            'email' => 'required',
            'password'=>'required',
        ]);
        if(Auth::attempt(['email' => $request['email'], 'password' => $request['password']])){
            //redirect to the our people dashboard
            return redirect()->route('dashboard');
        }else{
            //stay on the login page
            return redirect()->back()->with(['error'=>'Your credentials do not match try again']);
        };
    }
    
    public function getLogout(){
        Auth::logout();
        return redirect()->back();
    }
 
}
