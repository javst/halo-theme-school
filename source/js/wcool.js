$(document).ready(function(){
    $("#login").click(function(){


        if($("#username").val().length>0){
            if ($("#password").val().length>0){
                $('#user').submit();
            }
        }
    });
    //register button
    $("#show-register").click(function (){
        $("#register-modal").addClass("md-show")
    })
    function logout (){
        $.get("/logout",function (data,state){
            alert(data);
            location.reload();
        })

    }
    $("#sure-logout").click(function (){
        $("#modal").addClass("md-show")
        $("#modal .md-content").append("<h3>提示</h3><h4 style=\"text-align: center;\">您确定要注销登录吗？</h4>")
        $("#modal .md-content").append("<button onclick='logout()' id=\"logout\" class=\"wcool-button\" href=\"#\">注销登录</button>")


    })
    $(".md-overlay").click(function (){
        closeModel();
    })


    $("#buyConfigure").click(function (){
        $("#modal").addClass("md-show")
        $("#modal .md-content").append("<h3>提示</h3><h4 style=\"text-align: center;\">您确定要申请此设备吗？</h4>")
        $("#modal .md-content").append("<button onclick='buyGoods()' id=\"logout\" class=\"wcool-button\" href=\"#\">确定申请</button>")

    })
});
function openRegister(){
    closeModel();
    $("#register-modal").addClass("md-show")
}
//register
function register(){
    if($("#register-username").val().length>0&&$("#register-nickname").val().length>0&&$("#register-password").val().length>0&&$("#register-department").val().length>0&&$("#register-class_name").val().length>0&&$("#register-student_num").val().length>0){
        var data ={
            "username":$("#register-username").val(),
            "nickname":$("#register-nickname").val(),
            "password":$("#register-password").val(),
            "department":$("#register-department").val(),
            "class_name":$("#register-class_name").val(),
            "student_num":$("#register-student_num").val(),
        }
        $.post($("#register-form").attr("action"), data,function (data){
            closeModel();
            $("#modal").addClass("md-show")
            alert(1)
            $("#modal .md-content").append("<h3>提示</h3><h4 style=\"text-align: center;\">"+data+"</h4>")
            $("#modal .md-content").append("<button onclick='closeModel()'  class=\"wcool-button\" href=\"#\">确定</button>")
        })
    }
    else {
        closeModel();
        $("#modal").addClass("md-show")
        $("#modal .md-content").append("<h3>提示</h3><h4 style=\"text-align: center;\">请填写所有信息</h4>")
        $("#modal .md-content").append("<button onclick='openRegister()'  class=\"wcool-button\" href=\"#\">确定</button>")

    }
}


function logout (){
    $.get("/logout",function (data,state){
        alert(data);
        location.reload();
    })

}


function closeModel(){
    $("#modal").removeClass("md-show")
    $("#modal .md-content").empty()
    $("#register-modal").removeClass("md-show")
}
function buyGoods(){
    var postId = {"postId":$("#post-id").val()};
    var url = $("#buyForm").attr("action")
    if(postId!=null){
        $.post(url,postId,function (data){
            $("#modal .md-content").empty()
            $("#modal .md-content").append("<h3>提示</h3><h4 style=\"text-align: center;\">"+data+"</h4>")
            $("#modal .md-content").append("<button onclick='closeModel()'  class=\"wcool-button\" href=\"#\">确定</button>")
        })
    }





}