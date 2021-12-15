<!DOCTYPE html>
<html lang="zh-CN">
<#include "common/head.ftl">
<@head title="文章归档"/>
<body class="archive category category-hangqing category-553 lang-cn el-boxed">
<#include "common/header.ftl">
<div id="wrap">
    <div class="container wrap">
        <div class="main">
                <#list archives as archive>
                    <div class="sec-panel sec-panel-list">
                        <div class="sec-panel-head">
                            <h1><span>${archive.year?c}</span></h1>
                        </div>
                        <div class="sec-panel-body">
                            <ul class="post-loop post-loop-list cols-0">
                                <#list archive.posts?sort_by("createTime")?reverse as post>
                                    <li class="item">
                                        <span class="date pull-right">${post.createTime?date}</span>
                                        <a href="${post.fullPath!}" target="_blank" rel="bookmark">
                                            ${post.title}  
                                        </a>
                                    </li>
                                </#list>   
                            </ul>
                        </div>
                    </div>
                </#list>
                <ul class="pagination">
                    <@paginationTag method="archives" page="${posts.number}" total="${posts.totalPages}" display="3">
                        <#if pagination.hasPrev>
                            <li>
                                <a href="${pagination.prevPageFullPath!}">上一页</a>
                            </li>
                        </#if>
                        <#list pagination.rainbowPages as number>
                            <#if number.isCurrent>
                                <li>
                                    <span class="current">${number.page!}</span>
                                </li>
                            <#else>
                                <li>
                                    <a href="${number.fullPath!}">${number.page!}</a>
                                </li>
                            </#if>
                        </#list>
                        <#if pagination.hasNext>
                            <li>
                                <a href="${pagination.nextPageFullPath!}">下一页</a>
                            </li>
                        </#if>
                    </@paginationTag>
                </ul>            
        </div>
        <#include "module/aside.ftl">
    </div>
</div>
<#include "common/footer.ftl">

<script type="text/javascript" id="main-js-extra">
    var _wpcom_js = {"webp":"","slide_speed":"5000","user_card_height":"356","video_height":"482","fixed_sidebar":"0","errors":{"require":"","pls_enter":"","password":"","passcheck":"","phone":"","terms":"Please read and agree with the terms","sms_code":"","captcha_verify":"","captcha_fail":"","nonce":"","req_error":""},"follow_btn":"<i class=\"wpcom-icon wi\"><svg aria-hidden=\"true\"><use xlink:href=\"#wi-add\"><\/use><\/svg><\/i>\u5173\u6ce8","followed_btn":"\u5df2\u5173\u6ce8","user_card":"1"};
</script>
<script type="text/javascript" src="${theme_base!}/source/js/main.js" id="main-js"></script>
<script type="text/javascript" src="${theme_base!}/source/js/wp-embed.js" id="wp-embed-js"></script>
<script>(function ($) {$(document).ready(function () {setup_share(1);})})(jQuery);</script>
</body>
</html>