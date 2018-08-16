<%@page import="board.dao.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
    
<%
	int su = (int)request.getAttribute("su");
	int pg = (int)request.getAttribute("pg");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 삭제</title>
<script type="text/javascript">
	window.onload = function(){
		<% if(su>0) { %>
			alert("삭제 성공");
		<%}else{%>
			alert("삭제 실패");
		<%}%>
		location.href="boardList.jsp?pg=<%=pg%>";
	}
</script>
</head>
<body>

</body>
</html>