<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/9/10
 * Time: 15:53
 */
namespace app\index\model;
use think\Model;
class Member extends Model
{
    public function add($data){
        foreach ($data as $k=>$v){
            $data[$k]=trim($v);
        }
        $this->allowField(true)->save($data);
        return $this->id;
    }
    public function lst($where = []){
        return $this->where($where)->order('id','desc')->select();
    }
}