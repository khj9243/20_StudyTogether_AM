<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/views/common/header.jsp"%>
<%@ page import="com.kh.review.model.vo.ReviewStudy" %>
<%
	ReviewStudy revS = (ReviewStudy)request.getAttribute("reviewStudy");
%>
<style>
#revWTitle{
	text-align:center;
	height:50px;
	border:1px solid #ccc;
}
table.revWrite{
        border-collapse: separate;
        border-spacing: 1px;
        text-align: left;
        line-height: 2;
        border-top: 1px solid #ccc;
        margin : 0 auto;
        width:500px;
        cellpadding:"2";
}
table.revWrite tr {
        width: 100px;
        padding: 10px;
        font-weight: bold;
        vertical-align: top;
        border-bottom: 1px solid #ccc;
}
table.revWrite td {
         font-size: 15px;
         width: 100px;
         padding: 10px;
         vertical-align: top;
         border-bottom: 1px solid #ccc;
}
#revUpdate,#revDelete,#backBtn{
	 color: black;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    display: inline-block; 
    margin-: 0px auto; 
    width: 10%;
    align: center;
}
</style>
<form action="<%=request.getContextPath() %>/review/reviewStudyUpdateEnd">
<br>
<h2 style="text-align:center"><%=revS.getStudyName() %><h5>수정 페이지</h5></h2>
<br>
<input type="hidden" name="no" value=<%=revS.getReviewStuNo() %>/>
   <table class="revWrite">
      <tr>
        <td style="text-align: center;">작성자</td>
        <td><%=revS.getReviewStuWriter() %></td>
       </tr>
       
        <tr>
          <td style="text-align: center;">분야</td>
          <td><%=revS.getReviewStuCategory() %></td>
        </tr>
        <tr>
            <td style="text-align: center;">만족도</td>
            <%if(revS.getReviewStuStar()==1){%>
            	<td>★</td>
            <%}else if(revS.getReviewStuStar()==2){ %>
            	<td>★★</td>
            <%}else if(revS.getReviewStuStar()==3){ %>
            	<td>★★★</td>
            <%}else if(revS.getReviewStuStar()==4){ %>
          		<td>★★★★</td>
          	<%}else if(revS.getReviewStuStar()==5){ %>
          		<td>★★★★★</td>
          	<%} %>
        </tr>
        <tr>
           <td style="text-align: center;">내용</td>
           <td style="height:auto"><textarea name="content" cols=85 rows=10 style="resize:none;"><%=revS.getReviewStuContent() %></textarea></td>
        </tr>
          
   </table>
   <br>
    
       <div style="mrgin:0 auto;">
    		  <button onclick="backBtn()" name="backBtn" id="backBtn">취소</button>
             <button type="submit" updateChk()" name="revUpdate" id="revUpdate">수정 완료</button>
       </div>
	    
		
			
</form>
<%@ include file="/views/common/footer.jsp"%>