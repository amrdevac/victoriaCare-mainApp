<?php

namespace App\Http\Service;

use App\Models\User;
use App\Http\Util\ResponseUtil;
use App\Http\Util\SidebarMenuUtil;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use App\Http\Util\ResponseTextMessageUtil;
use Browser;


class AutentikasiService
{
    private $secret = 'keeptryinbaby';
    private $selected_data = [
        "id",
        "userid",
    ];

    public function defaultLogin($argLogiParams)
    {
        $userid = $argLogiParams->username;
        $password = $argLogiParams->password;


        $attemp_login = compact(
            "userid",
            "password",
        );

        if (Auth::attempt($attemp_login)) {
            $dataUser = User::where('userid', $userid)->first(
                $this->selected_data
            );

            $success['token'] =  $dataUser->createToken($this->secret);
            $token = $dataUser->createToken($this->secret, [])->accessToken;
            $dataResponse = [
                "token" => $token,
                "data_user" => $dataUser,
                "menu_sidebar" => SidebarMenuUtil::$generalMenu,
            ];

            DB::table('user_devices')->insert([
                "user_id" => $userid,
                "user_ip" => $this->getIp(),
                "user_agent" => Browser::userAgent(),
                "device_type" => Browser::deviceType(),
                "browser_name" => Browser::browserName(),
                "browser_family" => Browser::browserFamily(),
                "browser_version" => Browser::browserVersion(),
                "browser_version_major" => Browser::browserVersionMajor(),
                "browser_version_minor" => Browser::browserVersionMinor(),
                "browser_version_patch" => Browser::browserVersionPatch(),
                "browser_engine" => Browser::browserEngine(),
                "platform_name" => Browser::platformName(),
                "platform_family" => Browser::platformFamily(),
            ]);

            return ResponseUtil::successArray(
                ResponseTextMessageUtil::$successLoginDefault,
                $dataResponse,
                200
            );
        }
        return ResponseUtil::failArray(
            ResponseTextMessageUtil::$failLoginDefault,
            [],
            400
        );
    }


    private function getIp()
    {
        foreach (array('HTTP_CLIENT_IP', 'HTTP_X_FORWARDED_FOR', 'HTTP_X_FORWARDED', 'HTTP_X_CLUSTER_CLIENT_IP', 'HTTP_FORWARDED_FOR', 'HTTP_FORWARDED', 'REMOTE_ADDR') as $key) {
            if (array_key_exists($key, $_SERVER) === true) {
                foreach (explode(',', $_SERVER[$key]) as $ip) {
                    $ip = trim($ip); // just to be safe
                    if (filter_var($ip, FILTER_VALIDATE_IP, FILTER_FLAG_NO_PRIV_RANGE | FILTER_FLAG_NO_RES_RANGE) !== false) {
                        return $ip;
                    }
                }
            }
        }
        return request()->ip(); // it will return server ip when no client ip found
    }
}
