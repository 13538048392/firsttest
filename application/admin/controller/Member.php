<?php
namespace app\admin\controller;

use think\Controller;

class Member extends Controller{
    public function index(){
        $memLstData =model('index/member')->order('id','desc')->paginate(10);
        $this->assign('data',$memLstData);
        $this->assign('page',$memLstData->render());
        return view('index');

    }
    public function lst(){

        $where = input('post.data');

        if($where){
            parse_str($where,$output);
            $output['tel'] = trim($output['tel']);
            $where =array_filter($output);
            if(isset($where['remark_count'])){
                if($where['remark_count'] == 1){
                    unset($where['remark_count']);
                  return  $data = model('index/member')->where($where)->where('remark_count > 0')->order('id','desc')->paginate(10);
                }elseif ($where['remark_count'] == -1){
                    $where['remark_count'] = 0;
                };
            }
            $data = model('index/member')->where($where)->order('id','desc')->paginate(10);

            return $data;
        }
    }
    public function litpage(){
        $limit =10;
        $data = input('get.');
        $page = $data['page'];
        $pre =($page-$limit)*$limit;
        unset($data['page']);
        $where =array_filter($data);
        $data = model('index/member')->where($where)->order('id','desc')->limit($pre,$limit)->select();
        return $data;
    }
    public function getOne(){
        $id = input('get.');
        return model('index/member')->field('face,lover_education,lover_height,lover_weight,lover_hometown,lover_salary')->where(['id'=>$id])->find();
    }
}
