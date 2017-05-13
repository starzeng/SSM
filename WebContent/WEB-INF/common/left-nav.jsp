<%@page import="com.oa.base.Const"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- Start #sidebar -->
<div id="sidebar">
    <!-- Start .sidebar-inner -->
    <div class="sidebar-inner">
        <!-- Start #sideNav -->
        <ul id="sideNav" class="nav nav-pills nav-stacked">
            <li class="top-search">
                <form>
                    <input type="text" name="search" placeholder="搜索 ...">
                    <button type="submit"><i class="ec-search s20"></i>
                    </button>
                </form>
            </li>
            <li><a href="<%=Const.DOMAIN%>admin">首页 <i class="im-screen"></i></a></li>
            <li><a href="<%=Const.DOMAIN%>admin/user/list">用户管理<i class="ec-users"></i></a></li>
            <li><a href="<%=Const.DOMAIN%>admin/dept/list">部门管理<i class="ec-archive"></i></a></li>
        </ul>
        <!-- End #sideNav -->
    </div>
</div>

