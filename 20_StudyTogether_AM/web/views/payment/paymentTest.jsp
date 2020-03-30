<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name=(String)request.getParameter("name");
	String email=(String)request.getParameter("email");
	String phone=(String)request.getParameter("phone");
	String address=(String)request.getParameter("address");
	String stotalPrice=(String)request.getParameter("stotalPrice");
	int totalPrice=Integer.parseInt(stotalPrice);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>I'mPort Payment Test</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js" ></script>
<script src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js" type="text/javascript"></script>
</head>
<body>
<script>
	var IMP=window.IMP;
	IMP.init('imp38249937');
	
	IMP.request_pay({
	    pg : 'kakaopay', // version 1.1.0부터 지원.
	    pay_method : 'card',
	    merchant_uid : 'merchant_' + new Date().getTime(),
	    name : '주문명:JSP 강좌',
	    amount : <%=totalPrice%>,
	    buyer_email : <%=email%>,
	    buyer_name : <%=name%>,
	    buyer_tel : <%=phone%>,
	    buyer_addr : <%=address%>,
	    buyer_postcode : '123-456',
	    //m_redirect_url : 'https://localhost:9090/'
	}, function(rsp) {
	    if ( rsp.success ) {
	        var msg = '결제가 완료되었습니다.';
	        msg += '고유ID : ' + rsp.imp_uid;
	        msg += '상점 거래ID : ' + rsp.merchant_uid;
	        msg += '결제 금액 : ' + rsp.paid_amount;
	        msg += '카드 승인번호 : ' + rsp.apply_num;
	        location.href='<%=request.getContextPath()%>/views/common/msg.jsp"+msg"';
	    } else {
	        var msg = '결제에 실패하였습니다.';
	        msg += '에러내용 : ' + rsp.error_msg;
	        location.href='<%=request.getContextPath()%>/views/common/msg.jsp"+msg"';
	    }
	    alert(msg);
	});
	
</script>

</body>
</html>