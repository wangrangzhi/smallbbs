<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
   

  </head>
  
  <body>
    	<form action="login" method="post">
    		用户名：<input type="text" name="user" ><br>
    		密码：<input type="password" name="password" ><br>
    		<input type="submit" value="登陆">

    	</form>
  </body>
</html>
