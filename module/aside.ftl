       <!--侧边栏分类1-->
        <aside class="sidebar">
            <div id="modal" class="md-modal md-effect-1">
                <div class="md-content">

                </div>
                <p></p>
            </div>
            <#if !is_login??>
            <div id="register-modal" class="md-modal md-effect-1">
                <div class="md-content login-box">
                    <h3>注册</h3>
                    <form id="register-form" style="width: 80%;margin: 10px auto;padding: 5px;" class="user-box" action="${blog_url!}/register">
                        用户名：<input required="" id="register-username" name="username" type="text">
                        姓名：<input required="" id="register-nickname" name="nickname" type="text">
                        密码：<input required="" id="register-password" name="password" type="password">
                        学/工号：<input required="" id="register-student_num" name="student_num" type="text">
                        所在院系：<input required="" id="register-department" name="department" type="text">
                        班级：<input required="" id="register-class_name" name="class_name" type="text">
                    </form>
                    <button onclick="register()" class="wcool-button" type="button" id="register-button">注册</button>

                </div>
                <p></p>
            </div>
            </#if>
            <div class="md-overlay"></div>
<#--            价格框-->
<#--            <#if is_post??>-->
<#--            <div id="wpcom-post-thumb-3" class="widget widget_post_thumb">-->
<#--                <h3 class="widget-title" style="font-size:16px;">价格：<font color="#dc143c" style="margin:  10px 0">${price}</font>¥</h3>-->
<#--                <h3 class="widget-title" style="font-size:16px;">库存：<font color="#dc143c" style="margin: 10px">${stock}</font>件</h3>-->
<#--                <form method="post" id="buyForm" action="${blog_url!}/buyGoods">-->
<#--                    <input name="postId" id="post-id" value="${post.id}" type="hidden">-->
<#--                </form>-->
<#--                <button type="button" id="buyConfigure" class="wcool-button" value="购买">申请</button>-->
<#--                <input type="text" style="margin: 0 10px;width: 30px" value="1" name="amount" id="amount">个-->
<#--            </div>-->
<#--            </#if>-->
<#--            登录框-->
            <#if !is_login??>
                <div id="wpcom-post-thumb-3" class="widget widget_post_thumb">
                    <div class="login-box">
                        <h3>登录系统</h3>
                        <form id="user" method="post" name="user" action="${blog_url!}/login">
                            <div class="user-box">
                                用户名：<input id="username" type="text" name="user" required="">
                            </div>
                            <div class="user-box">
                                密码：<input id = "password" type="password" name="user" required="">
                            </div>
                        </form>
                        <button id="login" type="button" class="wcool-button" href="#">
                            登录
                        </button>
                        <button type="button" id="show-register" class="wcool-button" href="#">
                            注册
                        </button>
                    </div>

                </div>

            </#if>
            <#--  用户信息框-->
            <#if is_login??>
                <div id="wpcom-post-thumb-3" class="widget widget_post_thumb">
                    <div class="login-box">
                        <h3 class="widget-title" style="font-size:16px;">个人信息</h3>
                        <p>姓名：${user.nickname}</p>
                        <p>余额：${user.money}</p>
                        <p>学/工号：${user.student_num}</p>
                        <p>院系：${user.department}</p>
                        <p>班级：${user.class_name}</p>
                        <form id="user" method="post" name="user" action="${blog_url!}/login">
                        </form>
                        <button  id="sure-logout" class="wcool-button" href="#">
                            注销登录
                        </button>
                        <button  id="sure-logout" class="wcool-button" href="${blog_url!}/user">
                            <a  href="${blog_url!}/user/userInformation">个人中心</a>
                        </button>

                    </div>

                </div>

            </#if>
            <#if settings.weixin_gongzhonghao?? && settings.weixin_gongzhonghao != ''>
            <div id="wpcom-post-thumb-3" class="widget widget_post_thumb">
                <p style="font-size:16px;">${settings.gongzhonghao_remark!'管理员账号'}</p>
                <ul>
                    <li class="item">
                        <div >
                            <img style="width:100%;" src="${theme_base!}/source/images/lazy.png" class="attachment-post-thumbnail size-post-thumbnail wp-post-image j-lazy" alt="" data-original="${settings.weixin_gongzhonghao!}"></a>
                        </div>
                    </li>
                </ul>
            </div>
            </#if>
            <#if settings.first_aside?? && settings.first_aside != ''>
                <div id="wpcom-lastest-news-2" class="widget widget_lastest_news">
                    <@postTag method="listByCategorySlug" categorySlug="${settings.first_aside!}">
                        <ul style="margin-bottom:20px;">
                            <#list posts?sort_by("createTime")?reverse as post>
                            <#if post_index lt 10>
                                <li><a href="${post.fullPath!}" title="${post.title!}">${post.title!}</a></li>
                            </#if>
                            </#list>
                            <li class="pull-right"><a href="${blog_url!}/categories/${settings.first_aside!}">查看更多</a></li>
                        </ul>
                    </@postTag>
                </div>
                <#else>
            </#if>
            
             <!--侧边栏分类2-->
            <#if settings.second_aside?? && settings.second_aside != ''>
                <div id="wpcom-post-thumb-3" class="widget widget_post_thumb">
                        <@postTag method="listByCategorySlug" categorySlug="${settings.second_aside!}">
                            <ul style="margin-bottom:20px;">
                                <#list posts?sort_by("createTime")?reverse as post>
                                <#if post_index lt 6>
                                    <li class="item">
                                        <div class="item-img">
                                                <a class="item-img-inner" href="${post.fullPath!}" title="${post.title!}">
                                                <img width="480" height="300" src="${theme_base!}/source/images/lazy.png" class="attachment-post-thumbnail size-post-thumbnail wp-post-image j-lazy" alt="${post.title!}" data-original="${post.thumbnail!}"></a>
                                        </div>
                                        <div class="item-content">
                                            <p class="item-title"><a href="${post.fullPath!}" title="${post.title!}">${post.title!}</a></p>
                                            <p class="item-date">${post.createTime?date}</p>
                                        </div>
                                    </li>
                                </#if>
                                </#list>
                                <li class="pull-right"><a href="${blog_url!}/categories/${settings.second_aside!}">查看更多</a></li>
                            </ul>
                        </@postTag>
                </div>
            </#if>
            <!--标签1-->
            <#if settings.show_tag!true>
            <div id="tag_cloud-2" class="widget widget_tag_cloud"><h3 class="widget-title">标签</h3>
            <div class="tagcloud">
            <@tagTag method="list">
              <#list tags as tag>
                <#if tag_index lt settings.tag_number?default(100)?number>
                <a href="${tag.fullPath!}" class="tag-cloud-link tag-link-5283 tag-link-position-1" style="font-size: 9.85pt;">${tag.name!}</a>
                </#if>
              </#list>
              <#if tags?size gt settings.tag_number?default(100)?number>
                <a href="${blog_url!}/tags" class="tag-cloud-link tag-link-5283 tag-link-position-1" style="font-size: 9.85pt;color:orange">更多>></a>
              </#if>
            </@tagTag>
            </div>
            </#if>
        </aside>