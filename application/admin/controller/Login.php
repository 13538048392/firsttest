<?php
namespace app\admin\controller;

use think\captcha\Captcha;
use think\Controller;

class Login extends Controller
{
    public function index()
    {
        //halt(session(config('admin.session_user'), '', config('admin.session_user_scope')));
        return $this->fetch();
    }
    public function verify(){
        $config =    [
            'imageH'=>60,
            'imageW'=>200,
            // 验证码字体大小
            'fontSize'    =>    30,
            // 验证码位数
            'length'      =>    3,
            // 关闭验证码杂点
            'useNoise'    =>    false,
        ];
        $captcha = new Captcha($config);
        return $captcha->entry();
    }

}
