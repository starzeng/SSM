<%@page import="com.oa.base.Const"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- Start #header -->
<div id="header">
    <div class="container-fluid">
        <div class="navbar">
            <div class="navbar-header">
                <a class="navbar-brand" href="index.html">
                    <i class="im-windows8 text-logo-element animated bounceIn"></i><span class="text-logo">OA</span>
                </a>
            </div>
            <nav class="top-nav" role="navigation">
                <ul class="nav navbar-nav pull-left">
                    <li id="toggle-sidebar-li">
                        <a href="#" id="toggle-sidebar" title="收起菜单"><i class="en-arrow-left2"></i></a>
                    </li>
                    <li>
                        <a href="#" class="full-screen" title="全屏"><i class="fa-fullscreen"></i></a>
                    </li>
                </ul>
                <ul class="nav navbar-nav pull-right">
                    <li class="dropdown">
                        <a href="#" data-toggle="dropdown">
                        	<img class="user-avatar" src="<%=Const.RESOURCES_DOMAIN%>/assets/img/avatars/48.jpg" alt="admin">admin
                        </a>
                        <ul class="dropdown-menu right" role="menu" style="width: 115px;">
                            <li><a href="<%=Const.DOMAIN%>/admin/logout"><i class="im-exit"></i>退 出</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>
        </div>
    </div>
</div>
<!-- End #header -->