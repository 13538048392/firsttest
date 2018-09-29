<?php
namespace app\admin\controller;

use app\common\lib\IAuth;
use app\http\middleware\Check;
use think\captcha\Captcha;
use think\Controller;

class Login extends Controller
{
    public function index()
    {
        $check = new Check();
        if($check->isLogin()){
            return $this->redirect('index/index');
        }else{
            return $this->fetch();
        }
    }
    public function check(){
        if (request()->isPost()){
            $data = input('post.');
            if(!captcha_check($data['code'])){
                $this->error('验证码错误');
            }
            $validate = validate('AdminUser');
            if (!$validate->check($data)){
                $this->error($validate->getError());
            }
            try {
                $user = model('AdminUser')->get(['username' => $data['username']]);
            }catch (\Exception $e){
                $this->error($e->getMessage());
            }
            if(!$user || $user['status'] !=config('code.status_normal')){
                $this->error('该用户不存在');
            }
            if (IAuth::setPassword($data['password']) !=$user['password']){
                $this->error('密码不对');
            }
            $udata =[
                'last_login_time' => time(),
                'last_login_ip' =>request()->ip(),
            ];
            try{
                model('AdminUser')->save($udata,['id'=>$user['id']]);
            }catch(\Exception $e){
                $this->error($e->getMessage());
            }
            session('adminuser',$user,'easy_love');
            $this->success('登录成功','index/index');
        }
    }
    public function logout(){
        session(null,'easy_love');
        $this->redirect('login/index');
    }
    public function verify(){
        $config =    [
            'imageH'=>60,
            'imageW'=>200,
            // 验证码字体大小
            'fontSize'    =>    30,
            // 验证码位数
            'length'      =>    3,
            // 关闭验证码杂点
            'useNoise'    =>    false,
        ];
        $captcha = new Captcha($config);
        return $captcha->entry();
    }

}
