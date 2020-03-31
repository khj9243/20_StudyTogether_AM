<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- header페이지 불러오기 -->
<%@ include file="/views/common/header.jsp"%>
<div class="container"></div>
<form action="<%=request.getContextPath()%>/payment/paymentTest"
	method="post">
	<p>
		<span>이름</span> <input name="name">
	</p>
	<p>
		<span>이메일:</span> <input name="email">
	</p>
	<span>연락처:</span>
	<p>
		<input type="text" name="phone">
	</p>
	<span>주소:</span>
	<p>
		<input name="address">
	</p>
	<span>총가격:</span>
	<p>
		<input name="totalPrice">
	</p>
	<input type="submit" value="결제하기"> <input type="reset"
		value="취소하기">
</form>
<%@ include file="/views/common/footer.jsp"%>