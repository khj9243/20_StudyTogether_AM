<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.kh.review.model.vo.ReviewStudy" %>
 <link rel="stylesheet" href="<%=request.getContextPath()%>/css/reviewBoard.css" type="text/css"/>
<%
	ReviewStudy revS = (ReviewStudy)request.getAttribute("reviewStudy");
%>
<%@ include file="/views/common/header.jsp"%>
<br>
<h2>스터디후기</h2>
   <table class="revWrite">
      <tr>
        <td>작성자</td>
        <td><%=revS.getReviewStuWriter() %></td>
       </tr>
        <tr>
            <td>스터디</td>
            <td><%=revS.getStudyName() %></td>
        </tr>
        <tr>
          <td>분야</td>
          <td><%=revS.getReviewStuCategory() %></td>
        </tr>
        <tr>
            <td>만족도</td>
            
            <td><%=revS.getReviewStuStar() %></td>
        </tr>
        <tr>
           <td>내용</td>
           <td><%=revS.getReviewStuContent() %></td>
        </tr>
          
   </table>
   <br>
 		<%if(loginMember!=null&&loginMember.getUserId().equals("admin")){ %>
	        <tr>
	            <th colspan="2">
	              <button onclick="updateChk()" name="revUpdate" id="revUpdate">수정</button>
       			  <button onclick="deleteChl()" name="revDelete" id="revDelete">삭제</button>
	            </th>
	        </tr>
	     <%} %>

</form>

<%@ include file="/views/common/footer.jsp"%>