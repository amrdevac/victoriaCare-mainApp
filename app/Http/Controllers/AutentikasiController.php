<?php

namespace App\Http\Controllers;

use stdClass;
use Illuminate\Http\Request;
use App\Http\Util\ResponseUtil;
use App\Http\Service\AutentikasiService;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\Http;

class AutentikasiController extends Controller
{
    private AutentikasiService $authService;

    public function __construct()
    {
        $this->authService = new AutentikasiService;
    }

    public function loginDefault(Request $request)
    {

        $response = Http::post('http://127.0.0.1:8001/api/login', [
            "username" => $request->username,
            "password" => $request->password,
        ]);

        Cache::put('token_users', $response["data"]["token"], 600);
        return $response->body();
    }

    public function loginAPI(Request $request)
    {

        $this->validate($request, [
            "username" => "required",
            "password" => "required",
        ]);

        $argLoginParams = new stdClass;
        $argLoginParams->username = $request->username;
        $argLoginParams->password = $request->password;

        $loginResult = $this->authService->defaultLogin($argLoginParams);
        return ResponseUtil::applyJson($loginResult);
    }
}
