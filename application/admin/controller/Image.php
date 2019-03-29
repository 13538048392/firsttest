<?php
namespace app\admin\controller;

use think\Controller;

class Image extends Controller{
    public function upload(){
        $file =request()->file();
        foreach($file as $k=>$v){

            $info =$v->move('./static/uploads');
        }
       if($info){
           // 成功上传后 获取上传信息
           // 输出 jpg
//            echo $info->getExtension();
           // 输出 20160820/42a79759f284b767dfcb2a0197904287.jpg
           return json_encode(['data'=>'/static/uploads/'.$info->getSaveName()]);
         
           // 输出 42a79759f284b767dfcb2a0197904287.jpg
//            echo $info->getFilename();
       }else{
           // 上传失败获取错误信息
           echo $file->getError();
       }
    }
}
?>