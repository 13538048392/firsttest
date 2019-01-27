<?php
namespace app\admin\controller;

use think\Controller;

class Member extends Controller{
    public function index(){
        $memLstData= model('index/member')->lst();
//        halt($memLstData);
        $this->assign('data',$memLstData);
        return view('index');
//        return $this->fetch();
    }
}
