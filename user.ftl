<!DOCTYPE html>
<html lang="zh-CN">
<#include "common/head.ftl">
<link rel="stylesheet" href="${theme_base!}/source/css/bootstrap.min.css">
<@head title=""/>
<body class="post-template-default single single-post postid-3063480 single-format-standard lang-cn el-boxed">
<#include "common/header.ftl">
<div id="wrap">
    <div class="container" style="margin-top: 20px;margin-bottom: 20px">
        <div class="row modal-body widget_post_thumb">
            <div class="col-md-4">
                <ul class="nav nav-pills nav-stacked">
                    <li ><a href="#">个人中心</a></li>
                    <li role="presentation" class="<#if action == "userInformation">active</#if> "><a href="${blog_url!}/user/userInformation">个人信息</a></li>
                    <li role="presentation" class="<#if action == "order">active</#if>"><a href="${blog_url!}/user/order">我的订单</a></li>
                    <li role="presentation" class="<#if action == "apply">active</#if>"><a href="${blog_url!}/user/apply">我的申购</a></li>
                    <li role="presentation" class="<#if action == "money">active</#if>"><a href="${blog_url!}/user/money">我的荣誉额</a></li>

                </ul>
            </div>
            <div class="col-md-20">
                <div class="panel panel-default">
                    <#if action =="userInformation">
                        <div class="panel-heading">
                            <h3 class="panel-title">  个人信息</h3>
                        </div>
                        <div class="user-information panel-body">
                            <form id="updateUserForm" enctype="multipart/form-data" action="${blog_url}/userInformation/updateUserAvatar" method="post">
                                <div class="row user-information-row">
                                    <div class="col-md-4 text-right">用户名：</div>
                                    <div class="col-md-20">${user.username!}</div>
                                </div>
                                <div class="row user-information-row">
                                    <div class="col-md-4 text-right">照片：</div>
                                    <div class="col-md-20">
                                        <a href="#" class="thumbnail user-avatar">
                                            <img src="${blog_url!}/${user.avatar!}" alt="...">
                                        </a>

                                        <input class="col-md-8" name="avatar" accept="image/*" value="" type="file">
                                        <button  class="col-md-4 btn btn-default btn-xs ">上传照片</button>
                                    </div>
                                </div>
                            </form>

                            <form id="updateUserAvatarForm"  action="${blog_url}/userInformation/updateUser" method="post">
                                <div class="row user-information-row">
                                    <div class="col-md-4 text-right">姓名：</div>
                                    <div class="col-md-20"><input name="nickname" value="${user.nickname!}"></div>
                                </div>
                                <div class="row user-information-row">
                                    <div class="col-md-4 text-right">余额：</div>
                                    <div class="col-md-20">${user.money!}</div>
                                </div>
                                <div class="row user-information-row">
                                    <div class="col-md-4 text-right">学/工号：</div>
                                    <div class="col-md-20"><input name="student_num" value="${user.student_num!}"></div>
                                </div>
                                <div class="row user-information-row">
                                    <div class="col-md-4 text-right">院系：</div>
                                    <div class="col-md-20"><input name="department" value="${user.department!}"></div>
                                </div>
                                <div class="row user-information-row">
                                    <div class="col-md-4 text-right">班级：</div>
                                    <div class="col-md-20"><input name="class_name" value="${user.class_name!}"></div>
                                </div>
                                <div class="row user-information-row">
                                    <div class="col-md-4 text-right">手机号：</div>
                                    <div class="col-md-20"><input name="phoneNumber" value="${user.phoneNumber!}"></div>
                                </div>
                                <button  class="wcool-button center-block">提交</button>
                            </form>

                        </div>
                    </#if>
                    <#if action =="money">
                        <div class="panel-heading">
                            <h3 class="panel-title">  我的荣誉额</h3>
                        </div>
                        <div class="user-information panel-body">
                            <form id="applyHero" enctype="multipart/form-data" action="${blog_url}/applyHero" method="post">
                                <div class="row user-information-row">
                                    <div class="col-md-4 text-right">当前荣誉额：</div>
                                    <div class="col-md-16">${user.money!}</div>
                                    <div class="col-md-4">
                                        <#if applyMoney??>
                                            <#if applyMoney == "1">
                                                提交成功
                                            </#if>
                                            <#if applyMoney == "0">
                                                提交失败
                                            </#if>
                                        </#if>
                                    </div>
                                </div>
                                <div class="row user-information-row">
                                    <div class="col-md-4 text-right">证书照片：</div>
                                    <div class="col-md-20">
                                        <input class="col-md-8" name="image" accept="image/*" value="" type="file">
                                    </div>
                                </div>
                                <div class="row user-information-row">
                                    <div class="col-md-4 text-right">证书名称：</div>
                                    <div class="col-md-20"><input name="title" value=""></div>
                                </div>
                                <div class="row user-information-row">
                                    <div class="col-md-4 text-right">申请额度：</div>
                                    <div class="col-md-20"><input name="money" value="0"></div>
                                </div>
                            </form>
                            <button onclick="applyHero()" class="wcool-button center-block">提交</button>
                        </div>
                    </#if>
                    <#if action == "order">
                        <div class="panel-heading">
                            <h3 class="panel-title">我的订单</h3>
                        </div>
                        <table class="table">
                            <thead>
                                <th>名称</th>
                                <th>时间</th>
                                <th>规格</th>
                                <th>数量</th>
                                <th>价格</th>
                                <th>状态</th>
                                <th>审核意见</th>
                                <th>修改</th>
                            </thead>
                            <tbody>
                            <#list order as i>
                                <script>
                                    var updateOrderUrl = "${blog_url}/updateOrder"
                                    var deleteOrderUrl = "${blog_url}/deleteOrder"
                                </script>
                                <tr>
                                    <th>${i.device!}</th>
                                    <th>${i.updateTime!}</th>
                                    <th>${i.norm!}</th>
                                    <th >
                                        <#if i.state ==0>
                                            <input id="order-${i.id?c}" class="input-wsm" value="${i.amount!}">
                                        <#else>
                                            ${i.amount!}
                                        </#if>
                                    </th>
                                    <th>${i.money!}</th>
                                    <th>
                                        <#if i.state ==0>待审核</#if>
                                        <#if i.state ==1>已通过</#if>
                                        <#if i.state ==2>已拒绝</#if>
                                    </th>
                                    <th>${i.advice!}</th>
                                    <th>
                                        <#if i.state ==0>
                                            <button data-loading-text = "成功" id="button-${i.id?c}" onclick="updateOrder(${i.id?c})" class="btn btn-default btn-xs">提交</button>
                                            <button data-loading-text = "成功" id="button-${i.id?c}" onclick="deleteOrder(${i.id?c})" class="btn btn-default btn-xs">撤销</button>
                                        <#else> 不可修改
                                        </#if>
                                    </th>
                                </tr>
                            </#list>

                            </tbody>
                        </table>
                    </#if>
                    <#if action == "apply">
                        <div class="panel-heading">
                            <h3 class="panel-title">我的订单</h3>
                        </div>
                        <table class="table">
                            <thead>
                                <th>名称</th>
                                <th>时间</th>
                                <th>元件型号</th>
                                <th>购买链接</th>
                                <th>数量</th>
                                <th>状态</th>
                                <th>审核意见</th>
                            </thead>
                            <tbody>
                            <#list apply as i>
                                <tr>
                                    <th>${i.title!}</th>
                                    <th>${i.updateTime!}</th>
                                    <th>${i.norm!}</th>
                                    <th><a href="${i.link!}">点击跳转</a></th>
                                    <th>
                                        ${i.number!}
                                    </th>
                                    <th>
                                        <#if i.state ==0>待审核</#if>
                                        <#if i.state ==1>已通过</#if>
                                        <#if i.state ==2>已拒绝</#if>
                                    </th>
                                    <th>${i.advice!}</th>
                                </tr>
                            </#list>

                            </tbody>
                        </table>
                    </#if>

                </div>
            </div>
        </div>

    </div>
</div>

<#include "common/footer.ftl">
<script type="text/javascript" id="main-js-extra">
    var _wpcom_js = {"webp":"","slide_speed":"5000","user_card_height":"356","video_height":"482","fixed_sidebar":"0","errors":{"require":"","pls_enter":"","password":"","passcheck":"","phone":"","terms":"Please read and agree with the terms","sms_code":"","captcha_verify":"","captcha_fail":"","nonce":"","req_error":""},"follow_btn":"<i class=\"wpcom-icon wi\"><svg aria-hidden=\"true\"><use xlink:href=\"#wi-add\"><\/use><\/svg><\/i>\u5173\u6ce8","followed_btn":"\u5df2\u5173\u6ce8","user_card":"1"};
</script>
<script type="text/javascript" src="${theme_base!}/source/js/main.js" id="main-js"></script>
<script type="text/javascript" src="${theme_base!}/source/js/comment-reply.min.js" id="comment-reply-js"></script>
<script type="text/javascript" src="${theme_base!}/source/js/wp-embed.js" id="wp-embed-js"></script>
<script>(function ($) {$(document).ready(function () {setup_share(1);})})(jQuery);</script>
<script type="text/javascript" src="${theme_base!}/source/js/bootstrap.min.js"></script>


</body>
</html>