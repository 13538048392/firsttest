<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/2/11
 * Time: 10:48
 */
namespace app\admin\controller;

use think\Controller;

class MemberRemark extends Controller{
    public function addRemark(){
        $data = input('post.');
        $data['create_time'] = time();
        return model("MemberRemark")->add($data);
    }
    public function remarkLstById(){
        $id = input('get.id');
        return model("MemberRemark")->lst(['member_id'=>$id]);
    }
}