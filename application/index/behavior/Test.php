<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/11/7
 * Time: 18:12
 */
namespace app\index\behavior;
class Test
{
    public function run($params){
        echo 'hello world';
    }
    public function appInit($params)
    {
        echo 'appInit';
    }

    public function appEnd($params)
    {
        echo 'appEnd';
    }
    public function  gg(){
        echo 'gg';
    }
}