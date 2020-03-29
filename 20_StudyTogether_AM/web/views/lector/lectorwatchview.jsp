<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="java.util.List,com.kh.lector.model.vo.Lector,com.kh.lectorWatch.model.vo.LectorWatch" %>


<%
/*  Lector l=(Lector)request.getAttribute("lector");*/ 
 List<LectorWatch> list=(List)request.getAttribute("lwList");
LectorWatch lw=(LectorWatch)request.getAttribute("lw");

%>
<%@ include file="/views/common/header.jsp"%>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/lectorWatch.css" type="text/css"/>

<section>
<!--lectorWatchUpdate서블릿만들어야함  -->
 <%-- <div class="container">
    <a href="<%=request.getContextPath()%>/lectorWatch/lectorwatchOpen?no=<%=l.getLectorNo() %>" class="btn btn-info" role="button">강좌 추가</a>
    <a href="<%=request.getContextPath()%>/lector/lectorUpdate?no=<%=l.getLectorNo() %>" class="btn btn-info" role="button">강좌 수정</a>
    <a href="<%=request.getContextPath() %>/lector/lectorDelete?no=<%=l.getLectorNo() %>" class="btn btn-info" role="button">강좌 삭제</a><!--관리자만 삭제  -->
  </div>
   --%>

<!--분기처리해서 강좌개설자&admin에게만 보일수 있는 강좌추가,수정,(삭제는 관리자페이지에서만가능) 버튼  -->
  
  <div id="intro">
  
  <h2><<%=lw.getWatchTitle() %>><h2>
  	금액:&nbsp;&nbsp;<%=lw.getWatchPrice() %>&nbsp;&nbsp;원</p>
  	</div>
  <div class="watch">
    <div class="video">
      <!-- 855*481 -->
     <%if(lw.getWatchOriginalVideo()!=null) {%>
	 <video id="video"  src="<%=request.getContextPath()%>/uploadAdd/lector/<%=lw.getWatchOriginalVideo() %>" controls width="855px" height="481px"></video>
 	</div>
    <%} %>
    <div class="video-inform">
    <%=lw.getWatchDetail() %>
   
      </p>
    </div>
    <button type="button" class="basket" onclick="apply();">수강신청</button>
  </div>
 

<p id="list"><img src="<%=request.getContextPath() %>/images/list.svg" width="30px" height="auto">&nbsp;&nbsp;강의목록</p>

<!--강좌 추가한것  -->
<div class="container">
  <div class="list-group">
   <a href="<%=request.getContextPath()%>/lector/lectorWatch?no=<%=lw.getRefLectorNo()%>" class="list-group-item list-group-item-action">1회제목 데이터 어떻게 받지?</a>
  	<%if(list!=null&&!list.isEmpty()){
	for(LectorWatch lw1: list){%>
  	<a href="<%=request.getContextPath()%>/lector/lectorWatchview?no=<%=lw1.getWatchNo() %>" class="list-group-item list-group-item-action"><%=lw.getWatchTitle()%></a>
	 <%}
	}%>
  </div>
</div>

<div class="page">
<ul class="pagination">
  <li class="page-item"><a class="page-link" href="#">이전</a></li>
  <li class="page-item"><a class="page-link" href="#">1</a></li>
  <li class="page-item"><a class="page-link" href="#">다음</a></li>
</ul>
</div>

</section>
<script>


function apply(){
var result= confirm("장바구니에 강좌를 담았습니다. 장바구니로 이동하시겠습니까?");
 if(result==true){
   location.href="";
 }
 else{
   location.reload;
 }
}

</script>

<%@ include file="/views/common/footer.jsp"%>
