<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/9/17
 * Time: 16:26
 */
namespace app\common\validate;
use think\Validate;
class AdminUser extends Validate{
    protected $rule =[
      'username' => 'require|max:20',
      'password' => 'require|max:20',
    ];
}