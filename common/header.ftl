<div class="image_header" style="position: absolute;width: 100%;background: #f5f5f5">
    <img style="margin: 0 auto;display: block" src="/themes/bg_header.jpg">
</div>
<header class="header" style="background: url('/themes/bg_nav.jpeg');height: 55px">

    <div class="container clearfix">

        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="icon-bar icon-bar-1"></span>
                <span class="icon-bar icon-bar-2"></span>
                <span class="icon-bar icon-bar-3"></span>
            </button>

        </div>
        <div class="collapse navbar-collapse">

        <#include "*/module/menu.ftl">

        <div class="navbar-action pull-right">
                <div class="navbar-search-icon j-navbar-search"><i class="wpcom-icon wi"><svg aria-hidden="true"><use xlink:href="#wi-search"></use></svg></i></div>
        </div>
        <form class="navbar-search" action="${blog_url!}/search" method="get" role="search">
            <div class="navbar-search-inner">
                <i class="wpcom-icon wi navbar-search-close"><svg aria-hidden="true"><use xlink:href="#wi-close"></use></svg></i>
                <input type="text" name="keyword" class="navbar-search-input" autocomplete="off" placeholder="输入关键词搜索..." value="">
                <button class="navbar-search-btn" type="submit"><i class="wpcom-icon wi"><svg aria-hidden="true"><use xlink:href="#wi-search"></use></svg></i></button>
            </div>
         </form>


    </div>
</header>