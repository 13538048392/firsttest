$(function () {
    var flag =true;
    $('input[type=text]').focus(function () {
        if(this.placeholder == this.value || this.value ==''){
            $(this).val(' ');
        }
    })
    $('input[name=username]').blur(function () {
        require($(this));
    })
    $('input[name=wechat]').blur(function () {
        require($(this));
    })
    $('input[name=age]').blur(function () {
        age($(this));
    })
    $('input[name=tel]').blur(function () {
        tel($(this));
    })
    $('input[name=hometown]').blur(function () {
        require($(this));
    })
    $('input[name=worker]').blur(function () {
        require($(this));
    })
    $('[name=education]').on('change',function () {
        if($(this).val() == '请选择'){
           $(this).next().show()
        }else{
            $(this).next().hide()
        }
    });
    function tel(obj) {
        var val =obj.val().trim();
        var test =/^[1]\d{10}$/.test(val);
        !test ? obj.next().show():obj.next().hide();
        !test ? flag=false : flag=true;
    }
    function age(obj) {
        var val =obj.val().trim();
        var test =/^\d{2}$/.test(val);
        !test ? obj.next().show():obj.next().hide();
        !test ? flag=false : flag=true;
    }
    function require(obj) {
        var val =obj.val().trim().length;
        !val ? obj.next().show():obj.next().hide();
        !val ? flag=false : flag=true;
    }
    var nextobj =document.getElementsByClassName('next')[0],
        oneself =document.getElementsByClassName('oneself')[0],
        selfLover =document.getElementsByClassName('selfLover')[0],
        finish =document.getElementsByClassName('finish')[0],
        loveTitle =document.getElementsByClassName('love-title')[0];
    nextobj.onclick = function () {
        if($('[name=education]').val() == '请选择'){
            return $('[name=education]').next().show();
        }
        $('.auth').blur();
        if(flag){
            oneself.style.display ='none';
            selfLover.style.display='block';
            loveTitle.innerHTML ='理想对象';
        }

    }
    finish.onclick = function () {
        var formData =$('form').serialize();
        $.post('/',{'data':formData},function (data) {
            console.log(data);
        });
        // alert('finish');
    }
    function getStyle(obj,attr) {
        if(window.getComputedStyle){
            return window.getComputedStyle(obj,null)[attr];
        }else{
            return obj.currentStyle[attr];
        }

    }
    //上传后展示图片
    $('#exampleInputFile').on('change', function () {
        // debugger
        var $inputFile = $(this);
        //获取选择文件
        var file = $inputFile.get(0).files[0],
            fr = new FileReader();
        fr.readAsDataURL(file);
        fr.onload = function (evt) {

            $('.imgg').attr({'src': evt.target.result});
            $('.imgg').css({'display':'block'});
        };
        var fm = new FormData();
        fm.append('touxiang',file);
        $.ajax({
            url: '/index.php/index/upload',
            type: 'POST',
            data: fm,                    // 上传formdata封装的数据
            // dataType: 'JSON',
            cache: false,                      // 不缓存
            processData: false,                // jQuery不要去处理发送的数据
            contentType: false,                // jQuery不要去设置Content-Type请求头
            success:function (data) {           //成功回调
                $('[name=face]').val(data);
            }
        });
    });
    //偷换点击按钮
    $('.upload').on('click', function (evt) {
        var $inputFile = $('#exampleInputFile');
        $inputFile.trigger('click');
    });
})