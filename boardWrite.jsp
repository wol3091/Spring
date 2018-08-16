<%@page import="board.dao.BoardDAO"%>
<%@page import="board.bean.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
    
<%
	int su = (int)request.getAttribute("su");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기</title>
<script type="text/javascript">
	window.onload = function(){
		<% if(su > 0) { %>
			alert("작성하신 글을 저장하였습니다.");
			location.herf="boardList.do?pg=1";
		<%} else { %>
			alert("작성하신 글을 저장하지 못하였습니다.");
			location.herf="boardWriteForm.do";
		<%}%>
	}
</script>
</head>
<body>
<% if(su>0){ %>
	<p>글을 저장하였다.</p>
<%}else{ %>
	<p>글을 저장못했다.</p>
<%} %>
</body>
</html>