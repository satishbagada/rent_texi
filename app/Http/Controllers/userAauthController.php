<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\userAuth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;

class userAauthController extends Controller
{
    public function index()
    {
        return view('admin.authentication.register');
    }
    public function register(Request $request)
    {
        $user=new userAuth();
        $user->user_name=$request->user_name;
        $user->user_email=$request->user_email;
        $user->password=Hash::make($request->password);
        $user->save();
        return redirect('/dashboard');

    }

        // =====login create area===============//
        public function viewlogin()
        {
            return view("admin.authentication.login");
        }
        public function login(Request $request)
        {
            $credential=$request->only('user_email','password');
            if(Auth::guard('admin')->attempt($credential))
            {
                
                return redirect()->intended('admin/dashboard')->withSuccess("Login Successfully.");
            }
            else
            {
                return redirect()->intended('/')->withSuccess("Login Fail.");
            }
        }
}
