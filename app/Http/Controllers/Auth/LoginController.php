<?php

namespace App\Http\Controllers\Auth;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;


use App\User;
use App\Http\Resources\UserResource;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    // /**
    //  * Where to redirect users after login.
    //  *
    //  * @var string
    //  */
    // protected $redirectTo = '/home';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    // public function __construct()
    // {
    //     $this->middleware('guest')->except('logout');
    // }

    public function login(Request $request)
    {
        $login = $request->login;
        $password = $request->password;

        $user = User::where('s_login', $login)->first();

        if($user != NULL){
            if(Hash::check($password . $user->s_salt, $user->s_password)){
                $user->s_token = hash('sha256', str_random(40));
                $user->save();
                return new UserResource($user);
            };    
        }
        return [
            "message" => "Unauthenticated."
        ];
    }

    // public function logout(Request $request, $token)
    // {
    //     $login = $request->login;
    //     $password = $request->password;

    //     $user = User::where('s_token', $token)->first();

    //     if($user != NULL){
    //         if(Hash::check($password . $user->s_salt, $user->s_password)){
    //             $user->s_token = '';
    //             $user->save();
    //             return new UserResource($user);
    //         };    
    //     }
    //     return [
    //         "message" => "Unauthenticated."
    //     ];
    // }
}
