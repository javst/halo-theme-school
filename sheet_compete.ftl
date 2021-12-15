<!DOCTYPE html>
<html lang="zh-CN">
<#include "common/head.ftl">
<@head title="${post.title!}"/>
<body class="post-template-default single single-post postid-3063480 single-format-standard lang-cn el-boxed">
<#include "common/header.ftl">
<div id="wrap">
    <div class="wrap container">
        <div class="main">
            <article id="post-3063480" class="post-3063480 post type-post status-publish format-standard has-post-thumbnail hentry category-zixun tag-bi tag-cishan tag-moyin">
                <div class="entry">
                    <div class="entry-head">
                        <h1 class="entry-title">${sheet.title!}</h1>
                    </div>
                    <div class="entry-content">
                        ${sheet.formatContent!}
                    </div>
                    <form id="apply-form" action="${blog_url!}/compete">
                        <div class="login-box">
                            <div class="user-box">名称：<input id="apply-title" name="title" value=""></div>
                            <div class="user-box">元件型号：<input id="apply-norm" name="norm" value=""></div>
                            <div class="user-box">购买链接：<input id="apply-link" name="link" value=""></div>
                            <div class="user-box">数量：<input id="apply-number" name="number" value=""></div>
                        </div>
                    </form>
                    <button class="wcool-button" onclick="apply()">提交</button>

                </div>
            </article>
        </div>
        <#include "module/aside.ftl">
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
</body>
</html>