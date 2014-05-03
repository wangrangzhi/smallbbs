<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
		
	
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<sql:setDataSource driver="com.mysql.jdbc.Driver"
     				   url="jdbc:mysql://localhost:3306/wangzhe"
     				   var="localSource" 
     				   user="root"  
     				   password="root"/>
			<sql:query var="rs" dataSource="${localSource}">
			select * from user
			</sql:query>
	

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
		  "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>JSTL SQL Tags - setDataSource Example</title>
</head>
<body>

	
	
					<c:forEach var="row" items="${rs.rows}">
					    Foo ${row.username}<br/>
					    Bar ${row.id}<br/>
					</c:forEach>
	
	
	
	
	
	
	
	
	
</body>
</html>
