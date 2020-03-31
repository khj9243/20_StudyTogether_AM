package com.kh.lector.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.kh.lector.model.service.LectorService;
import com.kh.lector.model.vo.Lector;
import com.kh.lector.model.vo.LectorChannel;

/**
 * Servlet implementation class LectorWatch
 */
@WebServlet("/lector/lectorView")
public class LectorViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LectorViewServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int no=Integer.parseInt(request.getParameter("no"));
		Lector l=new LectorService().selectLector(no);
		//페이징처리시작
		
		int cPage;
		try {
			cPage=Integer.parseInt(request.getParameter("cPage"));
		}catch(NumberFormatException e) {
			cPage=1;
		}
		int numPerPage=5;
		
		///lectorView에서 채널  리스트로불러오는 메서드
		List<LectorChannel> clist=new LectorService().searchChannel(no,cPage,numPerPage);
		
		//pageBar만들기
		int totalChannel=new LectorService().channelCount();//1
		int totalPage=(int)Math.ceil((double)totalChannel/numPerPage);//2
		
		int pageBarSize=5;
		int pageNo=((cPage-1)/pageBarSize)*pageBarSize+1;
		int pageEnd=pageNo+pageBarSize-1;
		
		String pageBar="";
		
		
		if(pageNo==1) {
			pageBar+="<li class='page-item'><a class='page-link'>이전</a></li>";
			
		}else {
			pageBar+="<a class='page-link' href='"+request.getContextPath()+"/lector/lectorView?cPage="+(pageNo-1)+"'>이전</a>";
		}
		
		while(!(pageNo>pageEnd || pageNo>totalPage)) {
			if(pageNo==cPage) {
				pageBar+="<li class='page-item'><a class='page-link'  style='background-color: lightblue; color:black; '>"+pageNo+"</a></li>";
			}else {
				pageBar+="<a class='page-link' href='"+request.getContextPath()+"/lector/lectorView?cPage="+pageNo+"'>"+pageNo+"</a>";
			}
			pageNo++;
		}
		
		if(pageNo>totalPage) {
		
				pageBar+="<li class='page-item'><a class='page-link'>다음</a></li>";
			}else {
				pageBar+="<a class='page-link' href='"+request.getContextPath()+"/lector/lectorView?cPage="+(pageNo)+"'>다음</a>";
			}
		
		String msg="";
		String loc="";
		
		if(l==null) {
			request.setAttribute("msg", "조회할 강좌가 없습니다.");
			request.setAttribute("loc", "lector/lectorList");
			request.getRequestDispatcher("/views/common/msg.jsp").forward(request, response);
			
		}else {
			request.setAttribute("clist", clist);
			request.setAttribute("lector", l);
			request.setAttribute("totalChannel", totalChannel);
			request.setAttribute("pageBar", pageBar);
			request.setAttribute("cPage", cPage);
			request.getRequestDispatcher("/views/lector/lectorView.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
