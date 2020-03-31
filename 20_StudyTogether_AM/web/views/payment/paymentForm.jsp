<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- header페이지 불러오기 -->
<%@ include file="/views/common/header.jsp"%>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/paymentForm.css">
<div class="container">
	<form action="<%=request.getContextPath()%>/payment/paymentTest" method="post">
		<div class="row">
			<table class="table">
				<tr class="row border-top border-bottom">
					<th class="col-2 border-right text-center" name="order_name">주문자</th>
					<td class="col border-left pl-5">
						<%=loginMember.getUserName()!=null?loginMember.getUserName():"이름없음" %>
						<span class="p-5">|</span> 
						<%=loginMember.getPhone()!=null?loginMember.getPhone():"전화번호없음" %> 
						<span class="p-5">|</span> 
						<%=loginMember.getEmail()!=null?loginMember.getEmail():"이메일없음" %> 
						<input type="hidden" name="order_name" value="<%=loginMember.getUserName()!=null?loginMember.getUserName():"이름없음" %>"> 
						<input type="hidden" name="order_email" value="<%=loginMember.getEmail()!=null?loginMember.getEmail():""%>">
						<input type="hidden" name="order_phone" value="<%=loginMember.getPhone()%>"> 
						<input type="hidden" name="order_id" value="<%=loginMember.getUserId()!=null?loginMember.getUserId():""%>">
					</td>
				</tr>
			</table>
		</div>
		<div class="row border-bottom mt-5 d-flex justify-content-between">
			<h4>강좌 정보</h4>
			<a href="javascript:;" class="btn_toggle on"></a>
		</div>
		<!-- 강좌정보 반복 출력 -->
		<div class="row mt-5 payInfo">
			<table class="table" id="orderTable" summary="강좌명, 총 가격">
				<caption style="caption-side:top;">주문 세부정보</caption>
				<colgroup>
					<col width="72">
					<col width="*">
					<col width="30%">
					<col width="16%">
				</colgroup>
				<thead>
					<tr>
						<th scope="col" colspan="2">강좌명</th>
						<th scope="col">판매가</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td id="prodImg0" class="img_cell ver_top">
							<a href="javascript:;" class="" onclick=""> 
								<img src="http://placehold.it/100x100">
							</a>
						</td>
						<td id="prodName0" class="align_left ver_top">
							<div class="order_name">
								<a href="javascript:;">
									<span>JSP 강좌</span>
									<input type="hidden" name="" value="">
								</a>
							</div>
						</td>
						<td>
							<strong>25,200</strong>원 
							<div>25,200원</div>
							<input type="hidden" name="" value="">
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="row d-flex justify-content-center ">
			<button class="btn btn-light w-50" type="button">결제하기</button>
			<button class="btn btn-light w-50" type="button" onclick="history.go(-1);">취소하기</button>
		</div>
	</form>
</div>
<%@ include file="/views/common/footer.jsp"%>