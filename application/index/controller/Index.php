<?php
namespace app\index\controller;

use duanxin\demo\sendSms;

class Index
{
    public function index()
    {
        if (request()->isPost()) {
            dump($_FILES);
//            echo 'ok';
        }else{
            return view();
        }

    }

    public function hello($name = 'ThinkPHP5')
    {
        return 'hello,' . $name;
    }
    public function test(){
        $mailer =new \Mailer();
        $mailer->send('1642504508@qq.com','你好','是的，很好');

    }
}
