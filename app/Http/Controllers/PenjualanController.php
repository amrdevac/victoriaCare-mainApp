<?php

namespace App\Http\Controllers;

use App\Models\Penjualan;
use Illuminate\Http\Request;
use App\Http\Util\ResponseUtil;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Cache;

class PenjualanController extends Controller
{
    public function index()
    {
        $response = Http::withToken(Cache::get('token_users'))->get('http://127.0.0.1:8001/api/penjualan');
        return $response;
    }
}
