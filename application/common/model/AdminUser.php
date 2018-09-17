<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/9/17
 * Time: 16:37
 */
namespace app\common\model;
use think\Model;
class AdminUser extends Model{
    protected $autoWriteTimestamp = true;
    public function add($data){
        if (!is_array($data)){
            exception('传递的数据不合法');
        }
        $this->allowField(true)->save($data);
        return $this->id;
    }

}