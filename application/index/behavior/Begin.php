<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/11/7
 * Time: 18:43
 */
namespace app\index\behavior;
class Begin{

    public function run(){

        echo 'Begin';
        return false;
    }
}