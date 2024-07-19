<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Validator;

class SessionController extends Controller
{
    public function index(){
        return view('sesi/login');
    }

    public function login(Request $request){
        Session::flash('email', $request->email);
        $request->validate([
            'email' => 'required',
            'password' => 'required'
        ]);

        $infologin = [
            'email' => $request->email,
            'password' => $request->password
        ];

        if (Auth::attempt($infologin)) {
            // kalau otentikasi sukses
            return redirect('home')->with('success','Yey! Kamu berhasil Login!');
        }else{
            // kalau otentikasi gagal
            return redirect('login')->withErrors('Username dan password yang dimasukkan tidak valid');
        }
    }

    public function logout(){
        Auth::logout();
        return redirect('login')->with('success', 'berhasil logout');
    }

    public function register(){
        return view('/sesi/register');
    }

    public function create(Request $request){
        // dd($request->all());
        // Simpan input sementara ke session untuk diisi ulang jika validasi gagal
        Session::flash('first_name', $request->first_name);
        Session::flash('last_name', $request->last_name);
        Session::flash('email', $request->email);

        // Validasi data
        // $request->validate([
        //     'first_name' => 'required|string|max:255',
        //     'last_name' => 'required|string|max:255',
        //     'email' => 'required|email|unique:users|max:255',
        //     'password' => 'required|min:6|confirmed',
        //     // 'agree' => 'required|accepted',
        // ], [
        //     'first_name.required' => 'Nama depan wajib diisi',
        //     'last_name.required' => 'Nama belakang wajib diisi',
        //     'email.required' => 'Email wajib diisi',
        //     'email.email' => 'Silakan masukkan email yang valid',
        //     'email.unique' => 'Email sudah pernah digunakan. Silakan menggunakan email lain',
        //     'password.required' => 'Password wajib diisi',
        //     'password.min' => 'Minimum password yang diizinkan adalah 6 karakter',
        //     'password.confirmed' => 'Konfirmasi password harus sama dengan password',
        //     // 'agree.required' => 'You must agree to the terms and conditions',
        //     // 'agree.accepted' => 'You must accept the terms and conditions',
        // ]);

        $validate = Validator::make($request->all(),
        [
            'first_name' => 'required|string|max:255',
            'last_name' => 'required|string|max:255',
            'email' => 'required|email|unique:users|max:255',
            'password' => 'required|min:6|confirmed',
            'agree' => 'required|accepted',
        ],[
            'first_name.required' => 'Nama depan wajib diisi',
            'last_name.required' => 'Nama belakang wajib diisi',
            'email.required' => 'Email wajib diisi',
            'email.email' => 'Silakan masukkan email yang valid',
            'email.unique' => 'Email sudah pernah digunakan. Silakan menggunakan email lain',
            'password.required' => 'Password wajib diisi',
            'password.min' => 'Minimum password yang diizinkan adalah 6 karakter',
            'password.confirmed' => 'Konfirmasi password harus sama dengan password',
            'agree.required' => 'You must agree to the terms and conditions',
            'agree.accepted' => 'You must accept the terms and conditions',
        ]);

        // if($validate->fails()){
        //     dd($validate->errors()->all());
        // }

        // Membuat data pengguna baru
        $data = [
            'first_name' => $request->first_name,
            'last_name' => $request->last_name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
            'agree' => $request->agree ? 1 : 0,
        ];
        User::create($data);

        // Informasi login
        $infologin = [
            'email' => $request->email,
            'password' => $request->password
        ];

        if (Auth::attempt($infologin)) {
            // kalau otentikasi sukses
            return redirect('/home')->with('success','Yey! Kamu berhasil Login!');
        }else{
            // kalau otentikasi gagal
            return redirect('/register')->withErrors('kamu tidak berhasil melakukan register');
        }
    }
}
