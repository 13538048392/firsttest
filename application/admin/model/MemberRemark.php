<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/2/11
 * Time: 10:41
 */
namespace app\admin\model;
use think\Model;
class MemberRemark extends Model
{
    public function add($data){
        foreach ($data as $k=>$v){
            $data[$k]=trim($v);
        }

       $res = $this->allowField(true)->save($data);
        return $res;

    }
    public function lst($where = []){
        return $this->where($where)->order('create_time','desc')->select();
    }
}