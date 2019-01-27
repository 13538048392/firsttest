<?php

/*
 * 此文件用于检测DEMO运行环境，无需修改，请在浏览器中运行检测
 *
 * 2017/11/19
 */

//$redis = new redis();
//$redis->connect('127.0.0.1',6379);
//$redis->set('k1','nnd');
// var_dump($redis->get('k1'));
$data['msg']=1;
//echo $_GET['somfun'].'('.json_encode($data).')';
echo $_GET['callback'].'('.json_encode($data).')';
