$(document).ready(function () {
    $("#login").click(function () {


        if ($("#username").val().length > 0) {
            if ($("#password").val().length > 0) {
                var url = $("#user").attr("action");
                var username = $("#username").val();
                var password = $("#password").val();
                $.post(url, {"username": username, "password": password}, function (data) {
                    $("#modal").addClass("md-show")
                    var sure = 0;
                    if (data == "登录成功") {
                        sure = 1;
                    }
                    $("#modal .md-content").append("<h3>提示</h3><h4 style=\"text-align: center;\">" + data + "</h4>")
                    $("#modal .md-content").append("<button onclick='login(" + sure + ")'  class=\"wcool-button\" href=\"#\">确定</button>")
                })
            }
        }
    });
    //register button
    $("#show-register").click(function () {
        $("#register-modal").addClass("md-show")
    })

    function logout() {
        $.get("/logout", function (data, state) {
            location.reload();
        })

    }


    $("#sure-logout").click(function () {
        $("#modal").addClass("md-show")
        $("#modal .md-content").append("<h3>提示</h3><h4 style=\"text-align: center;\">您确定要注销登录吗？</h4>")
        $("#modal .md-content").append("<button onclick='logout()' id=\"logout\" class=\"wcool-button\" href=\"#\">注销登录</button>")


    })
    $(".md-overlay").click(function () {
        closeModel();
    })


    $("#buyConfigure").click(function () {
        $("#modal").addClass("md-show")
        $("#modal .md-content").append("<h3>提示</h3><h4 style=\"text-align: center;\">您确定要申请此设备吗？</h4>")
        $("#modal .md-content").append("<button onclick='buyGoods()' id=\"logout\" class=\"wcool-button\" href=\"#\">确定申请</button>")

    })
});

function openRegister() {
    closeModel();
    $("#register-modal").addClass("md-show")
}

//login
function login(data) {
    if (data) {
        closeModel()
        location.reload()
    } else {
        closeModel()
    }

}

//register
function register() {
    if ($("#register-username").val().length > 0 && $("#register-nickname").val().length > 0 && $("#register-password").val().length > 0 && $("#register-department").val().length > 0 && $("#register-class_name").val().length > 0 && $("#register-student_num").val().length > 0) {
        var data = {
            "username": $("#register-username").val(),
            "nickname": $("#register-nickname").val(),
            "password": $("#register-password").val(),
            "department": $("#register-department").val(),
            "class_name": $("#register-class_name").val(),
            "student_num": $("#register-student_num").val(),
        }
        $.post($("#register-form").attr("action"), data, function (data) {
            closeModel();
            $("#modal").addClass("md-show")
            $("#modal .md-content").append("<h3>提示</h3><h4 style=\"text-align: center;\">" + data + "</h4>")
            $("#modal .md-content").append("<button onclick='closeModel()'  class=\"wcool-button\" href=\"#\">确定</button>")
        })
    } else {
        closeModel();
        $("#modal").addClass("md-show")
        $("#modal .md-content").append("<h3>提示</h3><h4 style=\"text-align: center;\">请填写所有信息</h4>")
        $("#modal .md-content").append("<button onclick='openRegister()'  class=\"wcool-button\" href=\"#\">确定</button>")

    }
}


function logout() {
    $.get("/logout", function (data, state) {
        location.reload();
    })

}

function apply() {
    $("#modal .md-content").empty()
    if ($("#apply-title").val().length > 0 && $("#apply-norm").val().length > 0 && $("#apply-link").val().length > 0 && $("#apply-number").val().length > 0) {
        var data = {
            "title": $("#apply-title").val(),
            "norm": $("#apply-norm").val(),
            "link": $("#apply-link").val(),
            "number": $("#apply-number").val(),
        }
        $.post($("#apply-form").attr("action"), data, function (data) {
            closeModel();
            $("#modal").addClass("md-show")
            $("#modal .md-content").append("<h3>提示</h3><h4 style=\"text-align: center;\">" + data + "</h4>")
            $("#modal .md-content").append("<button onclick='closeModel()'  class=\"wcool-button\" href=\"#\">确定</button>")
        })
    } else {
        closeModel();
        $("#modal").addClass("md-show")
        $("#modal .md-content").append("<h3>提示</h3><h4 style=\"text-align: center;\">请填写所有信息</h4>")
        $("#modal .md-content").append("<button onclick='closeModel()'  class=\"wcool-button\" href=\"#\">确定</button>")

    }
}

function closeModel() {
    $("#modal").removeClass("md-show")
    $("#modal .md-content").empty()
    $("#register-modal").removeClass("md-show")
}

function buyGoods() {
    var postId = $("#post-id").val();
    var url = $("#buyForm").attr("action")
    var amount = $("#amount").val()
    if (postId != null) {
        $.post(url, {postId, amount: amount}, function (data) {
            $("#modal .md-content").empty()
            $("#modal .md-content").append("<h3>提示</h3><h4 style=\"text-align: center;\">" + data + "</h4>")
            $("#modal .md-content").append("<button onclick='closeModel()'  class=\"wcool-button\" href=\"#\">确定</button>")
        })
    }
}
function updateUser() {
    $("#updateUserForm").submit()

}
function updateOrder(id){
    var button = "#button-" + id
    var inputId = "#order-" + id
    var amount = $(inputId)
    if (amount.val()<=0){
    }else {
        $.post(updateOrderUrl,{"orderId":id,"amount":amount.val()},function (data){
            $(button).button('loading')
            setTimeout(function (){
                $(button).button('reset')
            },500)
        })
    }

}
function deleteOrder(id){
    var button = "#button-" + id

    $.post(deleteOrderUrl,{"orderId":id},function (data){
        $(button).button('loading')
        setTimeout(function (){
            $(button).button('reset')
        },500)
        $(button).parent().parent().remove()

    })


}
function applyHero(){
    $("#applyHero").submit()
}