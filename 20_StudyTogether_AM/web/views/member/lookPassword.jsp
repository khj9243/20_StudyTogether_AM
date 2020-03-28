<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/header.jsp" %>
<section>
	<h2>비밀번호 변경 페이지 입니다.</h2>
	<form action="<%=request.getContextPath()%>/updatePassword" method="post">
		<input type="password" name="pw" id="changePw" placeholder="변경하실 비밀번호를 입력하세요"><br>
		<input type="password" name="pw" id="changePw" placeholder="비밀번호확인"><br>
		<input type="hidden" name="id" value="<%=request.getParameter("id")%>"/>
		<input type="submit" value="변경하기" id="pwSubmit">
	</form>
</section>
<script>
	$("#pwSubmit").onclick(function(){
		alert("success");
	})
</script>
<%@ include file="/views/common/footer.jsp" %>