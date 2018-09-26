<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/9/17
 * Time: 16:37
 */
namespace app\common\lib;

class IAuth {

    public static function setPassword($data){
      return md5($data.config('app.password_pre_halt'));
    }

}