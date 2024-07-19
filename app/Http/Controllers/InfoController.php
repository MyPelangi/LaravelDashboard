<?php

namespace App\Http\Controllers;

use App\Models\ms_cabang;
use App\Models\dt_penjualan;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class InfoController extends Controller
{
    public function TotalCabang()
    {
        $total_cabang = ms_cabang::count();
        $total_penjualan = dt_penjualan::sum('nominal');
        $max_nominal = dt_penjualan::select('refid_cabang', DB::raw('SUM(nominal) as total_nominal'))
        ->groupBy('refid_cabang')
        ->orderBy('total_nominal', 'desc')
        ->with('cabang')
        ->first();

        // Mengambil data penjualan dengan nominal terbesar
        // $penjualanTerbesar = Penjualan::where('nominal', $max_nominal)->first();
        // $penjualanTerbesar = Penjualan::orderBy('nominal', 'desc')->paginate(3);

        $penjualanTerbesar = dt_penjualan::select('refid_cabang', DB::raw('SUM(nominal) as total_nominal'))
            ->groupBy('refid_cabang')
            ->orderBy('total_nominal', 'desc')
            ->with('cabang')
            ->take(3)
            ->get();
            
        return view('home', compact('total_cabang','total_penjualan','max_nominal','penjualanTerbesar'));
    }
}
