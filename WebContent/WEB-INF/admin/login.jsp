<%@page import="com.oa.base.Const"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>登录</title>
        <%@include file="../common/html-head.jsp" %>
    </head>
    <body class="login-page">
        <!-- Start #login -->
        <div id="login" class="animated bounceIn">
            <!-- Start .login-wrapper -->
            <div class="login-wrapper">
                <div id="myTabContent" class="tab-content bn">
                    <div class="tab-pane fade active in" id="log-in">
                        <div class="social-buttons text-center mt10 s32">
                        	OA管理系统
                        </div>
                        <div class="seperator"></div>
                        <form class="form-horizontal mt10" action="<%=Const.DOMAIN%>admin/login" id="login-form" role="form">
                            <div class="form-group">
                                <div class="col-lg-12">
                                    <input type="text" name="account" id="account" class="form-control left-icon" value="" placeholder="你的账号">
                                    <i class="ec-user s16 left-input-icon"></i>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-lg-12">
                                    <input type="password" name="pswd" id="pswd" class="form-control left-icon" value="" placeholder="你的密码">
                                    <i class="ec-locked s16 left-input-icon"></i>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-lg-12">
                                    <span class="help-block"><a href="#"><small>忘记密码 ?</small></a></span> 
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="">
                                    <button class="btn btn-success pull-right" type="submit">登 录</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <!-- End #.login-wrapper -->
        </div>
        <!-- End #login -->
        
        <!-- Javascripts -->
        <%@include file="../common/html-js.jsp" %>
        <script src="<%=Const.RESOURCES_DOMAIN%>/assets/plugins/forms/icheck/jquery.icheck.js"></script>
        <script src="<%=Const.RESOURCES_DOMAIN%>/assets/plugins/forms/validation/jquery.validate.js"></script>
        <script src="<%=Const.RESOURCES_DOMAIN%>/assets/plugins/forms/validation/additional-methods.min.js"></script>
        <!-- Init plugins olny for this page -->
        <script src="<%=Const.RESOURCES_DOMAIN%>/assets/js/pages/login.js"></script>
    </body>
</html>