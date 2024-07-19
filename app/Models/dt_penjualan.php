<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class dt_penjualan extends Model
{
    use HasFactory;
    protected $table = "dt_penjualan";

    public function cabang()
    {
        return $this->belongsTo(ms_cabang::class, 'refid_cabang');
    }
}
