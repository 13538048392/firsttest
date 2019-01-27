<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/11/7
 * Time: 17:36
 */
namespace app\facade;
use think\Facade;
class Test extends Facade{
    protected static function getFacadeClass()
    {
        return 'app\common\Test';
    }
}