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
    /* <![CDATA[ */
    var _wpcom_js = {"slide_speed":"5000","lightbox":"1","user_card_height":"356","video_height":"482","fixed_sidebar":"1","login_url":"https:\/\/www.lianyi.com\/login","register_url":"https:\/\/www.lianyi.com\/reg","errors":{"require":"\u4e0d\u80fd\u4e3a\u7a7a","email":"\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u7535\u5b50\u90ae\u7bb1","pls_enter":"\u8bf7\u8f93\u5165","password":"\u5bc6\u7801\u5fc5\u987b\u4e3a6~32\u4e2a\u5b57\u7b26","passcheck":"\u4e24\u6b21\u5bc6\u7801\u8f93\u5165\u4e0d\u4e00\u81f4","phone":"\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7\u7801","terms":"Please read and agree with the terms","sms_code":"\u9a8c\u8bc1\u7801\u9519\u8bef","captcha_verify":"\u8bf7\u70b9\u51fb\u6309\u94ae\u8fdb\u884c\u9a8c\u8bc1","captcha_fail":"\u70b9\u51fb\u9a8c\u8bc1\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5","nonce":"\u968f\u673a\u6570\u6821\u9a8c\u5931\u8d25","req_error":"\u8bf7\u6c42\u5931\u8d25"},"follow_btn":"<i class=\"wpcom-icon wi\"><svg aria-hidden=\"true\"><use xlink:href=\"#wi-add\"><\/use><\/svg><\/i>\u5173\u6ce8","followed_btn":"\u5df2\u5173\u6ce8","user_card":"1"};
    /* ]]> */
</script>
<script type="text/javascript" src="${theme_base!}/source/js/main.js" id="main-js"></script>
<script type="text/javascript" src="${theme_base!}/source/js/comment-reply.min.js" id="comment-reply-js"></script>
<script type="text/javascript" src="${theme_base!}/source/js/wp-embed.js" id="wp-embed-js"></script>
<script>(function ($) {$(document).ready(function () {setup_share(1);})})(jQuery);</script>
</body>
</html>