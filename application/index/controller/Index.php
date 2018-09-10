<?php
namespace app\index\controller;

use duanxin\demo\sendSms;

class Index
{
    public function index()
    {
        if (request()->isPost()) {
           parse_str($_POST['data'],$data);
           dump($data);

        }else{
            return view();
        }

    }

    public function upload()
    {


         $file =request()->file('touxiang');
         $info =$file->move('../uploads');
        if($info){
            // 成功上传后 获取上传信息
            // 输出 jpg
//            echo $info->getExtension();
            // 输出 20160820/42a79759f284b767dfcb2a0197904287.jpg
            echo $info->getSaveName();
            // 输出 42a79759f284b767dfcb2a0197904287.jpg
//            echo $info->getFilename();
        }else{
            // 上传失败获取错误信息
            echo $file->getError();
        }

    }
    public function test(){
        $mailer =new \Mailer();
        $mailer->send('1642504508@qq.com','你好','是的，很好');

    }
}
