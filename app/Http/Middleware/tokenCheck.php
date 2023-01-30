<?php

namespace App\Http\Middleware;

use App\Exceptions\FailException;
use App\Http\Util\ResponseUtil;
use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;

class tokenCheck
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next)
    {

        $cek = Cache::get("token_users");
        if ($cek) {
            return $next($request);
        } else {;
            return throw new FailException(
                ResponseUtil::failArray(argMessage: "Tidak memiliki akses", argHttpStatus: 401)
            );
        }
    }
}
