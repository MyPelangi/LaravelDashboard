<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ms_cabang extends Model
{
    use HasFactory;
    protected $table = "ms_cabang";

    public function penjualan()
    {
        return $this->hasMany(dt_penjualan::class, 'refid_cabang');
    }
}
