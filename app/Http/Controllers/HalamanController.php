<?php

namespace App\Http\Controllers;

use App\Http\Util\SidebarMenuUtil;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Cache;

class HalamanController extends Controller
{
    public function __invoke()
    {
        $in_sidebars = [];
        $check = Cache::get("token_users");
        if ($check) {
            $in_sidebars = SidebarMenuUtil::$generalMenu;
            return view("layouts.auth", compact("in_sidebars"));
        }
        return view("layouts.app", compact("in_sidebars"));

    }
}
