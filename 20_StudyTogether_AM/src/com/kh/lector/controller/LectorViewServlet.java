package com.kh.lector.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.lector.model.service.LectorService;
import com.kh.lector.model.vo.Lector;
import com.kh.lector.model.vo.LectorWatch;

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
		
		//lectorWatch조회
		List<LectorWatch> lwList=new LectorService().selectLectorWatch(no);
		
		String msg="";
		String loc="";
		
		if(l==null) {
			request.setAttribute("msg", "조회할 강좌가 없습니다.");
			request.setAttribute("loc", "lector/lectorList");
			request.getRequestDispatcher("/views/common/msg.jsp").forward(request, response);
			
		}else {
			request.setAttribute("lector", l);
			request.setAttribute("lwList", lwList);
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
