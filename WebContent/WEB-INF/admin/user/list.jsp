<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>用户管理</title>
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
                        	<li>用户管理</li> 
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
                                    <h4 class="panel-title">用户列表</h4>
                                    <!-- Start 编辑按钮  -->
                                    <div class="btn-group dropdown col-lg-3">
	                                    <a class="btn dropdown-toggle" data-toggle="dropdown" id="dropdownMenu1" title="增加">
	                                    	<i class="en-user-add s24"></i>
	                                    </a> 
	                                    <div class="dropdown-menu pull-left col-lg-10" role="menu" aria-labelledby="dropdownMenu1">
	                                        <div class="option-dropdown">
						                        <!-- Start .panel -->
						                        <div class="panel panel-default">
						                            <!-- Start .panel -->
						                            <div class="panel-heading">
						                                <h3 class="panel-title">添加用户</h3>
						                            </div>
						                            <div class="panel-body">
						                                <form action="<%=Const.DOMAIN%>admin/user/add" class="form-horizontal group-border hover-stripped" role="form" id="validate">
						                                        <div class="form-group">
						                                        	<label class="col-lg-3 control-label">账号</label>
									                                <div class="col-lg-8">
									                                    <input type="text" name="account" class="form-control" value="" placeholder="请输入账号">
									                                </div>
									                            </div>
						                                        <div class="form-group">
						                                        	<label class="col-lg-3 control-label">姓名</label>
									                                <div class="col-lg-8">
									                                    <input type="text" name="name" class="form-control" value="" placeholder="请输入姓名">
									                                </div>
									                            </div>
						                                        <div class="form-group">
						                                        	<label class="col-lg-3 control-label">电话</label>
									                                <div class="col-lg-8">
									                                    <input type="text" name="tel" class="form-control" value="" placeholder="请输入电话">
									                                </div>
									                            </div>
						                                        <div class="form-group">
						                                        	<label class="col-lg-3 control-label">部门</label>
									                                <div class="col-lg-8">
									                                    <select name="deptId" class="form-control">
				                                                            <optgroup label="Alaskan/Hawaiian Time Zone">
				                                                                <option value="1">研发部</option>
				                                                                <option value="2">美术部</option>
				                                                            </optgroup>
				                                                            <optgroup label="Pacific Time Zone">
				                                                                <option value="3">California</option>
				                                                                <option value="4">Nevada</option>
				                                                                <option value="5">Oregon</option>
				                                                                <option value="6">Washington</option>
				                                                            </optgroup>
				                                                        </select>
									                                </div>
									                            </div>
						                                        <div class="form-group">
						                                            <div class="col-lg-12">
						                                                <button class="btn ml15 col-lg-3" type="reset">重置</button>
						                                                <button class="btn btn-primary ml15 col-lg-3" type="submit">添加</button>
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
                                                <th>账号</th>
                                                <th>姓名</th>
                                                <th>手机号</th>
                                                <th>注册时间</th>
                                                <th>操作</th>
                                            </tr>
                                        </thead>
                                        <tbody id="user_list">
                                        	<c:forEach items="${list}" var="user" varStatus="vs">  
									        <tr>
                                                <td>${user.account }</td>
                                                <td>${user.name }</td>
                                                <td>${user.tel }</td>
                                                <td class="">${user.createtime }</td>
                                                <td class="col-lg-1">
	                                                <a href="#" class="" title="删除" onclick="del(${user.id})">
	                                                	<i class="im-remove2 s24 color-red"></i>
	                                                </a>
					                                <a href="#" class="" title="修改" onclick="update(${user.id})">
					                                	<i class="im-pencil s24 color-blue ml15"></i>
					                                </a> 
												</td>
                                            </tr> 
											</c:forEach>  
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <th>账号</th>
                                                <th>姓名</th>
                                                <th>手机号</th>
                                                <th>注册时间</th>
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
        <script src="<%=Const.RESOURCES_DOMAIN%>/assets/plugins/ui/notify/jquery.gritter.js"></script>
        <script src="<%=Const.RESOURCES_DOMAIN%>/assets/js/jquery.sprFlat.js"></script>
        <script src="<%=Const.RESOURCES_DOMAIN%>/assets/js/app.js"></script>
        <script src="<%=Const.RESOURCES_DOMAIN%>/assets/js/pages/notifications.js"></script>
        <script src="<%=Const.RESOURCES_DOMAIN%>/assets/js/pages/data-tables.js"></script>
        <script>
        function del(id) {
        	bootbox.confirm({
        		size: "small",        		
                message: "数据将被永久删除 !",
                title: "你确定删除吗 ?",
                buttons: {
                    confirm: {
                        label: '确定',
                        className: 'btn-default'
                    },
                    cancel: {
                        label: '取消',
                        className: 'btn-success'
                    }
                },
                callback: function(result) {
                    if (result) {
                        var url="<%=Const.DOMAIN%>admin/user/delete";
                    	$.get(url,{id:id},function(data){
                    		location.reload(); 
                  		});
                    }
                }
            });                    
        }
        function update(id) {
        	bootbox.confirm({
                message: '<style>.datepicker{z-index: 99999 !important}</style><form class="form-horizontal" role="form" id="create_report_form"><input type="hidden" name="pid" value="" /><div class="form-group"><label class="col-sm-3 control-label no-padding-right" for="form_title"> 标题 </label><div class="col-sm-9"><textarea class="form-control" name="title" placeholder="标题"></textarea></div></div><div class="form-group"><label class="col-sm-3 control-label no-padding-right">内容 </label><div class="col-sm-9"><textarea class="form-control" name="content" placeholder="内容"></textarea></div></div><div class="form-group"><label class="col-sm-3 control-label no-padding-right">目标 </label><div class="col-sm-9"><textarea class="form-control" name="target" placeholder="目标"></textarea></div></div><div class="form-group"><label class="col-sm-3 control-label no-padding-right">截止时间 </label><div class="col-xs-6"><div class="input-group input-group-sm"><input type="text" id="datepicker" class="form-control hasDatepicker"><span class="input-group-addon"><i class="icon-calendar"></i></span></div></div></div></form>',
                title: "用户信息修改",
                callback: function(result) {
                    if (result) {
                        location.reload(); 
                    }
                }
            });                    
        }
        </script>
    </body>
</html>