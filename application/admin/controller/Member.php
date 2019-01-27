<?php
namespace app\admin\controller;

use think\Controller;

class Member extends Controller{
    public function index(){

        $where = input('post.data');
      if($where){
        parse_str($where,$output);
        $where =array_filter($output);
         return $memLstData= model('index/member')->lst($where);
//          halt($where);
      }
//
//        halt($where);

        $memLstData= model('index/member')->lst($where);
//        halt($memLstData);
        $this->assign('data',$memLstData);
        return view('index');
//        return $this->fetch();
    }
}
