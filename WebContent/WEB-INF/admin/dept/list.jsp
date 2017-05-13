<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>部门管理</title>
        <%@include file="../../common/html-head.jsp" %>
    </head>
    <body>
        <%@include file="../../common/header-nav.jsp" %>
       	<%@include file="../../common/left-nav.jsp" %>
        
        <!-- Start #content -->
        <div id="content">
            <!-- Start .content-wrapper -->
            <div class="content-wrapper">
                <div class="row">
                    <!-- Start .row -->
                    <!-- Start .page-header -->
                    <div class="col-lg-12 heading">
                        <!-- Start .bredcrumb -->
<!--                         <ul id="crumb" class="breadcrumb"></ul> -->
						<ul class="breadcrumb">
	                        <li>
		                        <i class="im-home"></i><a href="<%=Const.DOMAIN%>admin">首页</a>
		                        <i class="en-arrow-right7"></i>
                        	</li>
                        	<li>部门管理</li> 
                        </ul>
                        <!-- End .breadcrumb -->
                    </div>
                    <!-- End .page-header -->
                </div>
                <!-- End .row -->
                <div class="outlet">
                    <!-- Start .outlet -->
                    <!-- Page start here ( usual with .row ) -->
                    <div class="row">
                        <div class="col-lg-12">
                            <!-- col-lg-12 start here -->
                            <div class="panel panel-default plain">
                                <!-- Start .panel -->
                                <div class="panel-heading white-bg">
                                    <h4 class="panel-title">部门列表</h4>
                                    <!-- Start 编辑按钮  -->
                                    <div class="btn-group dropdown col-lg-6">
	                                    <a class="btn dropdown-toggle" data-toggle="dropdown" id="dropdownMenu1" title="增加">
	                                    	<i class="en-user-add s24"></i>
	                                    </a> 
	                                    <div class="dropdown-menu pull-left" role="menu" aria-labelledby="dropdownMenu1">
	                                        <div class="option-dropdown">
						                        <!-- Start .panel -->
						                        <div class="panel panel-default">
						                            <!-- Start .panel -->
						                            <div class="panel-heading">
						                                <h3 class="panel-title">添加用户</h3>
						                            </div>
						                            <div class="panel-body">
						                                <form class="form-horizontal group-border hover-stripped" role="form" id="validate">
						                                        <div class="form-group">
						                                            <label class="col-lg-2 control-label">Required field</label>
						                                            <div class="col-lg-10">
						                                                <input type="text" class="form-control required">
						                                            </div>
						                                        </div>
						                                        <div class="form-group">
						                                            <label class="col-lg-2 control-label">Email field</label>
						                                            <div class="col-lg-10">
						                                                <input id="email" name="email" type="email" class="form-control" placeholder="Type your email">
						                                            </div>
						                                        </div>
						                                        <!-- End .form-group  -->
						                                        <div class="form-group">
						                                            <label class="col-lg-2 control-label">Password field</label>
						                                            <div class="col-lg-10">
						                                                <input type="password" class="form-control" id="password" name="password" placeholder="Enter your password">
						                                                <input type="password" class="form-control mt15" id="confirm_password" name="confirm_passowrd" placeholder="Repeat password">
						                                            </div>
						                                        </div>
						                                        <div class="form-group">
						                                            <div class="col-lg-12">
						                                                <button class="btn ml15 col-lg-3" type="reset">reset</button>
						                                                <button class="btn btn-primary ml15 col-lg-3" type="submit">submit</button>
						                                            </div>
						                                        </div>
						                                        <!-- End .form-group  -->
						                                </form>
						                            </div>
						                        </div>
						                        <!-- End .panel -->
						                    </div>
						                    <!-- End .row -->
	                                    </div>
	                                </div>
	                                <!-- end 编辑按钮  -->
                                </div>
                                <div class="panel-body">
                                    <table class="table display" id="datatable">
                                        <thead>
                                            <tr>
                                                <th>Rendering engine</th>
                                                <th>Browser</th>
                                                <th>Platform(s)</th>
                                                <th>Engine version</th>
                                                <th>操作</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr class="odd gradeX">
                                                <td>Trident</td>
                                                <td>Internet Explorer 4.0</td>
                                                <td>Win 95+</td>
                                                <td class="center">4</td>
                                                <td class="col-lg-1">
                                                	 <a id="delete-success-notice" href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                            <tr class="even gradeC">
                                                <td>Trident</td>
                                                <td>Internet Explorer 5.0</td>
                                                <td>Win 95+</td>
                                                <td class="center">5</td>
                                                <td class="col-lg-1">
                                                	 <a href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                            <tr class="odd gradeA">
                                                <td>Trident</td>
                                                <td>Internet Explorer 5.5</td>
                                                <td>Win 95+</td>
                                                <td class="center">5.5</td>
                                                <td class="col-lg-1">
                                                	 <a href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                            <tr class="even gradeA">
                                                <td>Trident</td>
                                                <td>Internet Explorer 6</td>
                                                <td>Win 98+</td>
                                                <td class="center">6</td>
                                                <td class="col-lg-1">
                                                	 <a href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                            <tr class="even gradeA">
                                                <td>Trident</td>
                                                <td>Internet Explorer 6</td>
                                                <td>Win 98+</td>
                                                <td class="center">6</td>
                                                <td class="col-lg-1">
                                                	 <a href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                            <tr class="even gradeA">
                                                <td>Trident</td>
                                                <td>Internet Explorer 6</td>
                                                <td>Win 98+</td>
                                                <td class="center">6</td>
                                                <td class="col-lg-1">
                                                	 <a href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                            <tr class="even gradeA">
                                                <td>Trident</td>
                                                <td>Internet Explorer 6</td>
                                                <td>Win 98+</td>
                                                <td class="center">6</td>
                                                <td class="col-lg-1">
                                                	 <a href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                            <tr class="even gradeA">
                                                <td>Trident</td>
                                                <td>Internet Explorer 6</td>
                                                <td>Win 98+</td>
                                                <td class="center">6</td>
                                                <td class="col-lg-1">
                                                	 <a href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                            <tr class="even gradeA">
                                                <td>Trident</td>
                                                <td>Internet Explorer 6</td>
                                                <td>Win 98+</td>
                                                <td class="center">6</td>
                                                <td class="col-lg-1">
                                                	 <a href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                            <tr class="even gradeA">
                                                <td>Trident</td>
                                                <td>Internet Explorer 6</td>
                                                <td>Win 98+</td>
                                                <td class="center">6</td>
                                                <td class="col-lg-1">
                                                	 <a href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                            <tr class="even gradeA">
                                                <td>Trident</td>
                                                <td>Internet Explorer 6</td>
                                                <td>Win 98+</td>
                                                <td class="center">6</td>
                                                <td class="col-lg-1">
                                                	 <a href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                            <tr class="even gradeA">
                                                <td>Trident</td>
                                                <td>Internet Explorer 6</td>
                                                <td>Win 98+</td>
                                                <td class="center">6</td>
                                                <td class="col-lg-1">
                                                	 <a href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                            <tr class="even gradeA">
                                                <td>Trident</td>
                                                <td>Internet Explorer 6</td>
                                                <td>Win 98+</td>
                                                <td class="center">6</td>
                                                <td class="col-lg-1">
                                                	 <a href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                            <tr class="even gradeA">
                                                <td>Trident</td>
                                                <td>Internet Explorer 6</td>
                                                <td>Win 98+</td>
                                                <td class="center">6</td>
                                                <td class="col-lg-1">
                                                	 <a href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                            <tr class="even gradeA">
                                                <td>Trident</td>
                                                <td>Internet Explorer 6</td>
                                                <td>Win 98+</td>
                                                <td class="center">6</td>
                                                <td class="col-lg-1">
                                                	 <a href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                            <tr class="even gradeA">
                                                <td>Trident</td>
                                                <td>Internet Explorer 6</td>
                                                <td>Win 98+</td>
                                                <td class="center">6</td>
                                                <td class="col-lg-1">
                                                	 <a href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                            <tr class="even gradeA">
                                                <td>Trident</td>
                                                <td>Internet Explorer 6</td>
                                                <td>Win 98+</td>
                                                <td class="center">6</td>
                                                <td class="col-lg-1">
                                                	 <a href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                            <tr class="even gradeA">
                                                <td>Trident</td>
                                                <td>Internet Explorer 6</td>
                                                <td>Win 98+</td>
                                                <td class="center">6</td>
                                                <td class="col-lg-1">
                                                	 <a href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                            <tr class="even gradeA">
                                                <td>Trident</td>
                                                <td>Internet Explorer 6</td>
                                                <td>Win 98+</td>
                                                <td class="center">6</td>
                                                <td class="col-lg-1">
                                                	 <a href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                            <tr class="even gradeA">
                                                <td>Trident</td>
                                                <td>Internet Explorer 6</td>
                                                <td>Win 98+</td>
                                                <td class="center">6</td>
                                                <td class="col-lg-1">
                                                	 <a href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                            <tr class="even gradeA">
                                                <td>Trident</td>
                                                <td>Internet Explorer 6</td>
                                                <td>Win 98+</td>
                                                <td class="center">6</td>
                                                <td class="col-lg-1">
                                                	 <a href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                            <tr class="even gradeA">
                                                <td>Trident</td>
                                                <td>Internet Explorer 6</td>
                                                <td>Win 98+</td>
                                                <td class="center">6</td>
                                                <td class="col-lg-1">
                                                	 <a href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                            <tr class="even gradeA">
                                                <td>Trident</td>
                                                <td>Internet Explorer 6</td>
                                                <td>Win 98+</td>
                                                <td class="center">6</td>
                                                <td class="col-lg-1">
                                                	 <a href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                            <tr class="even gradeA">
                                                <td>Trident</td>
                                                <td>Internet Explorer 6</td>
                                                <td>Win 98+</td>
                                                <td class="center">6</td>
                                                <td class="col-lg-1">
                                                	 <a href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                            <tr class="even gradeA">
                                                <td>Trident</td>
                                                <td>Internet Explorer 6</td>
                                                <td>Win 98+</td>
                                                <td class="center">6</td>
                                                <td class="col-lg-1">
                                                	 <a href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                            <tr class="even gradeA">
                                                <td>Trident</td>
                                                <td>Internet Explorer 6</td>
                                                <td>Win 98+</td>
                                                <td class="center">6</td>
                                                <td class="col-lg-1">
                                                	 <a href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                            <tr class="even gradeA">
                                                <td>Trident</td>
                                                <td>Internet Explorer 6</td>
                                                <td>Win 98+</td>
                                                <td class="center">6</td>
                                                <td class="col-lg-1">
                                                	 <a href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                            <tr class="even gradeA">
                                                <td>Trident</td>
                                                <td>Internet Explorer 6</td>
                                                <td>Win 98+</td>
                                                <td class="center">6</td>
                                                <td class="col-lg-1">
                                                	 <a href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                            <tr class="even gradeA">
                                                <td>Trident</td>
                                                <td>Internet Explorer 6</td>
                                                <td>Win 98+</td>
                                                <td class="center">6</td>
                                                <td class="col-lg-1">
                                                	 <a href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                            <tr class="even gradeA">
                                                <td>Trident</td>
                                                <td>Internet Explorer 6</td>
                                                <td>Win 98+</td>
                                                <td class="center">6</td>
                                                <td class="col-lg-1">
                                                	 <a href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                            <tr class="even gradeA">
                                                <td>Trident</td>
                                                <td>Internet Explorer 6</td>
                                                <td>Win 98+</td>
                                                <td class="center">6</td>
                                                <td class="col-lg-1">
                                                	 <a href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                            <tr class="even gradeA">
                                                <td>Trident</td>
                                                <td>Internet Explorer 6</td>
                                                <td>Win 98+</td>
                                                <td class="center">6</td>
                                                <td class="col-lg-1">
                                                	 <a href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                            <tr class="even gradeA">
                                                <td>Trident</td>
                                                <td>Internet Explorer 6</td>
                                                <td>Win 98+</td>
                                                <td class="center">6</td>
                                                <td class="col-lg-1">
                                                	 <a href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                            <tr class="even gradeA">
                                                <td>Trident</td>
                                                <td>Internet Explorer 6</td>
                                                <td>Win 98+</td>
                                                <td class="center">6</td>
                                                <td class="col-lg-1">
                                                	 <a href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                            <tr class="even gradeA">
                                                <td>Trident</td>
                                                <td>Internet Explorer 6</td>
                                                <td>Win 98+</td>
                                                <td class="center">6</td>
                                                <td class="col-lg-1">
                                                	 <a href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                            <tr class="even gradeA">
                                                <td>Trident</td>
                                                <td>Internet Explorer 6</td>
                                                <td>Win 98+</td>
                                                <td class="center">6</td>
                                                <td class="col-lg-1">
                                                	 <a href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                            <tr class="even gradeA">
                                                <td>Trident</td>
                                                <td>Internet Explorer 6</td>
                                                <td>Win 98+</td>
                                                <td class="center">6</td>
                                                <td class="col-lg-1">
                                                	 <a href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                            <tr class="even gradeA">
                                                <td>Trident</td>
                                                <td>Internet Explorer 6</td>
                                                <td>Win 98+</td>
                                                <td class="center">6</td>
                                                <td class="col-lg-1">
                                                	 <a href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                            <tr class="even gradeA">
                                                <td>Trident</td>
                                                <td>Internet Explorer 6</td>
                                                <td>Win 98+</td>
                                                <td class="center">6</td>
                                                <td class="col-lg-1">
                                                	 <a href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                            <tr class="even gradeA">
                                                <td>Trident</td>
                                                <td>Internet Explorer 6</td>
                                                <td>Win 98+</td>
                                                <td class="center">6</td>
                                                <td class="col-lg-1">
                                                	 <a href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                            <tr class="even gradeA">
                                                <td>Trident</td>
                                                <td>Internet Explorer 6</td>
                                                <td>Win 98+</td>
                                                <td class="center">6</td>
                                                <td class="col-lg-1">
                                                	 <a href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                            <tr class="even gradeA">
                                                <td>Trident</td>
                                                <td>Internet Explorer 6</td>
                                                <td>Win 98+</td>
                                                <td class="center">6</td>
                                                <td class="col-lg-1">
                                                	 <a href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                            <tr class="even gradeA">
                                                <td>Trident</td>
                                                <td>Internet Explorer 6</td>
                                                <td>Win 98+</td>
                                                <td class="center">6</td>
                                                <td class="col-lg-1">
                                                	 <a href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                            <tr class="even gradeA">
                                                <td>Trident</td>
                                                <td>Internet Explorer 6</td>
                                                <td>Win 98+</td>
                                                <td class="center">6</td>
                                                <td class="col-lg-1">
                                                	 <a href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                            <tr class="even gradeA">
                                                <td>Trident</td>
                                                <td>Internet Explorer 6</td>
                                                <td>Win 98+</td>
                                                <td class="center">6</td>
                                                <td class="col-lg-1">
                                                	 <a href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                            <tr class="even gradeA">
                                                <td>Trident</td>
                                                <td>Internet Explorer 6</td>
                                                <td>Win 98+</td>
                                                <td class="center">6</td>
                                                <td class="col-lg-1">
                                                	 <a href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                            <tr class="even gradeA">
                                                <td>Trident</td>
                                                <td>Internet Explorer 6</td>
                                                <td>Win 98+</td>
                                                <td class="center">6</td>
                                                <td class="col-lg-1">
                                                	 <a href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                            <tr class="even gradeA">
                                                <td>Trident</td>
                                                <td>Internet Explorer 6</td>
                                                <td>Win 98+</td>
                                                <td class="center">6</td>
                                                <td class="col-lg-1">
                                                	 <a href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                            <tr class="even gradeA">
                                                <td>Trident</td>
                                                <td>Internet Explorer 6</td>
                                                <td>Win 98+</td>
                                                <td class="center">6</td>
                                                <td class="col-lg-1">
                                                	 <a href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                            <tr class="even gradeA">
                                                <td>Trident</td>
                                                <td>Internet Explorer 6</td>
                                                <td>Win 98+</td>
                                                <td class="center">6</td>
                                                <td class="col-lg-1">
                                                	 <a href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                            <tr class="even gradeA">
                                                <td>Trident</td>
                                                <td>Internet Explorer 6</td>
                                                <td>Win 98+</td>
                                                <td class="center">6</td>
                                                <td class="col-lg-1">
                                                	 <a href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                            <tr class="even gradeA">
                                                <td>Trident</td>
                                                <td>Internet Explorer 6</td>
                                                <td>Win 98+</td>
                                                <td class="center">6</td>
                                                <td class="col-lg-1">
                                                	 <a href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                            <tr class="even gradeA">
                                                <td>Trident</td>
                                                <td>Internet Explorer 6</td>
                                                <td>Win 98+</td>
                                                <td class="center">6</td>
                                                <td class="col-lg-1">
                                                	 <a href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                            <tr class="even gradeA">
                                                <td>Trident</td>
                                                <td>Internet Explorer 6</td>
                                                <td>Win 98+</td>
                                                <td class="center">6</td>
                                                <td class="col-lg-1">
                                                	 <a href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                            <tr class="even gradeA">
                                                <td>Trident</td>
                                                <td>Internet Explorer 6</td>
                                                <td>Win 98+</td>
                                                <td class="center">6</td>
                                                <td class="col-lg-1">
                                                	 <a href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                            <tr class="even gradeA">
                                                <td>Trident</td>
                                                <td>Internet Explorer 6</td>
                                                <td>Win 98+</td>
                                                <td class="center">6</td>
                                                <td class="col-lg-1">
                                                	 <a href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                            <tr class="even gradeA">
                                                <td>Trident</td>
                                                <td>Internet Explorer 6</td>
                                                <td>Win 98+</td>
                                                <td class="center">6</td>
                                                <td class="col-lg-1">
                                                	 <a href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                            <tr class="even gradeA">
                                                <td>Trident</td>
                                                <td>Internet Explorer 6</td>
                                                <td>Win 98+</td>
                                                <td class="center">6</td>
                                                <td class="col-lg-1">
                                                	 <a href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                            <tr class="even gradeA">
                                                <td>Trident</td>
                                                <td>Internet Explorer 6</td>
                                                <td>Win 98+</td>
                                                <td class="center">6</td>
                                                <td class="col-lg-1">
                                                	 <a href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                            <tr class="even gradeA">
                                                <td>Trident</td>
                                                <td>Internet Explorer 6</td>
                                                <td>Win 98+</td>
                                                <td class="center">6</td>
                                                <td class="col-lg-1">
                                                	 <a href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                            <tr class="even gradeA">
                                                <td>Trident</td>
                                                <td>Internet Explorer 6</td>
                                                <td>Win 98+</td>
                                                <td class="center">6</td>
                                                <td class="col-lg-1">
                                                	 <a href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                            <tr class="even gradeA">
                                                <td>Trident</td>
                                                <td>Internet Explorer 6</td>
                                                <td>Win 98+</td>
                                                <td class="center">6</td>
                                                <td class="col-lg-1">
                                                	 <a href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                            <tr class="even gradeA">
                                                <td>Trident</td>
                                                <td>Internet Explorer 6</td>
                                                <td>Win 98+</td>
                                                <td class="center">6</td>
                                                <td class="col-lg-1">
                                                	 <a href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                            <tr class="even gradeA">
                                                <td>Trident</td>
                                                <td>Internet Explorer 6</td>
                                                <td>Win 98+</td>
                                                <td class="center">6</td>
                                                <td class="col-lg-1">
                                                	 <a href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                            <tr class="even gradeA">
                                                <td>Trident</td>
                                                <td>Internet Explorer 6</td>
                                                <td>Win 98+</td>
                                                <td class="center">6</td>
                                                <td class="col-lg-1">
                                                	 <a href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                            <tr class="even gradeA">
                                                <td>Trident</td>
                                                <td>Internet Explorer 6</td>
                                                <td>Win 98+</td>
                                                <td class="center">6</td>
                                                <td class="col-lg-1">
                                                	 <a href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                            <tr class="even gradeA">
                                                <td>Trident</td>
                                                <td>Internet Explorer 6</td>
                                                <td>Win 98+</td>
                                                <td class="center">6</td>
                                                <td class="col-lg-1">
                                                	 <a href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                            <tr class="even gradeA">
                                                <td>Trident</td>
                                                <td>Internet Explorer 6</td>
                                                <td>Win 98+</td>
                                                <td class="center">6</td>
                                                <td class="col-lg-1">
                                                	 <a href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                            <tr class="even gradeA">
                                                <td>Trident</td>
                                                <td>Internet Explorer 6</td>
                                                <td>Win 98+</td>
                                                <td class="center">6</td>
                                                <td class="col-lg-1">
                                                	 <a href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                            <tr class="even gradeA">
                                                <td>Trident</td>
                                                <td>Internet Explorer 6</td>
                                                <td>Win 98+</td>
                                                <td class="center">6</td>
                                                <td class="col-lg-1">
                                                	 <a href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                            <tr class="even gradeA">
                                                <td>Trident</td>
                                                <td>Internet Explorer 6</td>
                                                <td>Win 98+</td>
                                                <td class="center">6</td>
                                                <td class="col-lg-1">
                                                	 <a href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                            <tr class="even gradeA">
                                                <td>Trident</td>
                                                <td>Internet Explorer 6</td>
                                                <td>Win 98+</td>
                                                <td class="center">6</td>
                                                <td class="col-lg-1">
                                                	 <a href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                            <tr class="even gradeA">
                                                <td>Trident</td>
                                                <td>Internet Explorer 6</td>
                                                <td>Win 98+</td>
                                                <td class="center">6</td>
                                                <td class="col-lg-1">
                                                	 <a href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                            <tr class="even gradeA">
                                                <td>Trident</td>
                                                <td>Internet Explorer 6</td>
                                                <td>Win 98+</td>
                                                <td class="center">6</td>
                                                <td class="col-lg-1">
                                                	 <a href="#" class="" title="删除">
                                                	 	<i class="im-remove2 s24 color-red"></i>
                                                	 </a>
                                                	 <a href="#" class="" title="修改">
                                                	 	<i class="im-pencil s24 color-blue ml15"></i>
                                                	 </a>
												</td>
                                            </tr>
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <th>Rendering engine</th>
                                                <th>Browser</th>
                                                <th>Platform(s)</th>
                                                <th>Engine version</th>
                                                <th>操作</th>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>
                            </div>
                            <!-- End .panel -->
                        </div>
                        <!-- col-lg-12 end here -->
                    </div>
                    <!-- Page End here -->
                </div>
                <!-- End .outlet -->
            </div>
            <!-- End .content-wrapper -->
            <div class="clearfix"></div>
        </div>
        <!-- End #content -->
       
        <%@include file="../../common/html-js.jsp" %>
        <!-- Core plugins ( not remove ever) -->
        <!-- Handle responsive view functions -->
        <script src="<%=Const.RESOURCES_DOMAIN%>/assets/js/jRespond.min.js"></script>
        <!-- Custom scroll for sidebars,tables and etc. -->
        <script src="<%=Const.RESOURCES_DOMAIN%>/assets/plugins/core/slimscroll/jquery.slimscroll.min.js"></script>
        <script src="<%=Const.RESOURCES_DOMAIN%>/assets/plugins/core/slimscroll/jquery.slimscroll.horizontal.min.js"></script>
        <!-- Resize text area in most pages -->
        <script src="<%=Const.RESOURCES_DOMAIN%>/assets/plugins/forms/autosize/jquery.autosize.js"></script>
        <!-- Proivde quick search for many widgets -->
        <script src="<%=Const.RESOURCES_DOMAIN%>/assets/plugins/core/quicksearch/jquery.quicksearch.js"></script>
        <!-- Bootbox confirm dialog for reset postion on panels -->
        <script src="<%=Const.RESOURCES_DOMAIN%>/assets/plugins/ui/bootbox/bootbox.js"></script>
        <!-- Other plugins ( load only nessesary plugins for every page) -->
        <script src="<%=Const.RESOURCES_DOMAIN%>/assets/plugins/core/moment/moment.min.js"></script>
        <script src="<%=Const.RESOURCES_DOMAIN%>/assets/plugins/charts/sparklines/jquery.sparkline.js"></script>
        <script src="<%=Const.RESOURCES_DOMAIN%>/assets/plugins/charts/pie-chart/jquery.easy-pie-chart.js"></script>
        <script src="<%=Const.RESOURCES_DOMAIN%>/assets/plugins/forms/icheck/jquery.icheck.js"></script>
        <script src="<%=Const.RESOURCES_DOMAIN%>/assets/plugins/forms/tags/jquery.tagsinput.min.js"></script>
        <script src="<%=Const.RESOURCES_DOMAIN%>/assets/plugins/forms/tinymce/tinymce.min.js"></script>
        <script src="<%=Const.RESOURCES_DOMAIN%>/assets/plugins/tables/datatables/jquery.dataTables.min.js"></script>
        <script src="<%=Const.RESOURCES_DOMAIN%>/assets/plugins/tables/datatables/jquery.dataTablesBS3.js"></script>
        <script src="<%=Const.RESOURCES_DOMAIN%>/assets/plugins/tables/datatables/tabletools/ZeroClipboard.js"></script>
        <script src="<%=Const.RESOURCES_DOMAIN%>/assets/plugins/tables/datatables/tabletools/TableTools.js"></script>
        <script src="<%=Const.RESOURCES_DOMAIN%>/assets/plugins/misc/highlight/highlight.pack.js"></script>
        <script src="<%=Const.RESOURCES_DOMAIN%>/assets/plugins/misc/countTo/jquery.countTo.js"></script>
        <script src="<%=Const.RESOURCES_DOMAIN%>/assets/js/jquery.sprFlat.js"></script>
        <script src="<%=Const.RESOURCES_DOMAIN%>/assets/js/app.js"></script>
        <script src="<%=Const.RESOURCES_DOMAIN%>/assets/js/pages/data-tables.js"></script>
    </body>
</html>