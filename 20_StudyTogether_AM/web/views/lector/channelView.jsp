<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@page import="com.kh.lector.model.vo.Lector,java.util.List,com.kh.lector.model.vo.LectorChannel" %>

<%
	List<LectorChannel> clist=(List)request.getAttribute("clist");
	int cPage=(int)request.getAttribute("cPage");
	Lector l=(Lector)request.getAttribute("lector");
%>

<%@ include file="/views/common/header.jsp"%>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/lectorWatch.css" type="text/css"/>


<section>
<div class="container" >
    <%-- <a href="<%=request.getContextPath() %>/lectorWatch/lectorInsert" class="btn btn-info" role="button">강좌 추가</a> --%>
    <a href="<%=request.getContextPath()%>/lector/lectorChannelOpen?no=<%=l.getLectorNo() %>" class="btn btn-info" role="button">강좌 추가</a>
    <a href="<%=request.getContextPath()%>/lector/lectorUpdate?no=<%=l.getLectorNo() %>" class="btn btn-info" role="button">강좌 수정</a>
    <a href="<%=request.getContextPath() %>/lector/lectorDelete?no=<%=l.getLectorNo() %>" class="btn btn-info" role="button">강좌 삭제</a><!--관리자만 삭제  -->
</div>

<!--분기처리해서 강좌개설자&admin에게만 보일수 있는 강좌추가,수정,(삭제는 관리자페이지에서만가능) 버튼  -->
  
 <%if(clist!=null){ %>
	<%for(LectorChannel lc : clist) {%>
 <div id="intro">
  <h2><<%=l.getLectorTiltle() %>&nbsp;강좌><h2>
  	<p>제목:&nbsp;&nbsp;<%=lc.getChannelTitle() %><br>
  	금액:&nbsp;&nbsp;<%=lc.getChannelPrice() %>&nbsp;&nbsp;원</p>
  	</div>
  <div class="watch">
    <div class="video">
      <!-- 855*481 -->
     <%if(lc!=null&&lc.getChannelOriginalVideo()!=null) {%>
	<video src="<%=request.getContextPath() %>/upload/lector/<%=lc.getChannelOriginalVideo() %>" id="video" controls width="855px" height="481px"></video>
    <%}%>
 	</div>
    <div id="video-inform">
    <%=lc.getChannelDetail() %>
    </div>
    <button type="button" class="basket" onclick="apply();">수강신청</button>
  </div>

<p id="list"><img src="<%=request.getContextPath() %>/images/list.svg" width="30px" height="auto">&nbsp;&nbsp;강의목록</p>
<div class="container">
  <div class="list-group">
    <a href="<%=request.getContextPath() %>/lector/channelView?cNo=<%=l.getLectorNo() %>" class="list-group-item list-group-item-action"><%=lc.getChannelTitle() %></a>
	<%}
	}%>
  </div>
</div>


<ul class="pagination">
		<%=request.getAttribute("pageBar") %>
	</ul> 
<!-- <div class="container">
  <div class="list-group">
    <a href="#" class="list-group-item list-group-item-action">1강.오리엔테이션 및 강의소개</a>
    <a href="#" class="list-group-item list-group-item-action">2강.문장의 형식</a>
    <a href="#" class="list-group-item list-group-item-action">3강.문장의 형식-2</a>
  </div>
</div>
<div class="page">
<ul class="pagination">
  <li class="page-item"><a class="page-link" href="#">이전</a></li>
  <li class="page-item"><a class="page-link" href="#">1</a></li>
  <li class="page-item"><a class="page-link" href="#">다음</a></li>
</ul> -->
<%-- </div>
 <p id="list"><img src="<%=request.getContextPath() %>/images/list.svg" width="30px" height="auto">&nbsp;&nbsp;강의목록</p>
<div class="container">
  <div class="list-group">
    <a href="javascript:void(0)" onclick="changeLector('<%=l.getLectorNo()%>')" class="list-group-item list-group-item-action"><%=l.getLectorTitle() %></a>
  	<%if(list!=null&&!list.isEmpty()){
	for(LectorWatch lw: list){%>
  	<a href="javascript:void(0)" onclick="changeLector('<%=l.getLectorNo()%>','<%=lw.getWatchNo() %>')" class="list-group-item list-group-item-action"><%=lw.getWatchTitle()%></a>
	 <%}
	}%>
  </div> --%>
</div> --%>


<!-- <div class="page">
<ul class="pagination">
  <li class="page-item"><a class="page-link" href="#">이전</a></li>
  <li class="page-item"><a class="page-link" href="#">1</a></li>
  <li class="page-item"><a class="page-link" href="#">다음</a></li>
</ul>
</div> -->
</section>





<%@ include file="/views/common/footer.jsp"%>
