<%@page import="com.oa.base.Const"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta charset="utf-8">
        <title>Error 400</title>
        <%@include file="../html-head.jsp" %>
    </head>
    <body class="error-page">
        <div class="container animated fadeInDown">
            <h1 class="error-number">400</h1>
            <h1 class="text-center mb25">Bad request ...</h1>
            <p class="text-center s24">The request cannot be fulfilled due to bad syntax.</p>
            <div class="text-center mt25">
                <div class="btn-group">
                    <a href="javascript: history.go(-1)" class="btn btn-default btn-lg"><i class="en-arrow-left8"></i>  Go back</a>
                    <a href="login.html" class="btn btn-default btn-lg"><i class="ec-locked"></i> Login</a>
                    <a href="#" class="btn btn-default btn-lg"><i class="en-mail"></i> Contact admin</a>
                </div>
            </div>
        </div>
        <!-- Javascripts -->
     	<%@include file="../html-js.jsp" %>
    </body>
</html>