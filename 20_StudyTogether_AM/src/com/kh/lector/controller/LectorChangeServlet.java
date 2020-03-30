package com.kh.lector.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.lector.model.service.LectorService;
import com.kh.lector.model.vo.Lector;
import com.kh.lector.model.vo.LectorWatch;

/**
 * Servlet implementation class LectorChangeServlet
 */
@WebServlet("/lector/videoSource")
public class LectorChangeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LectorChangeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int pNo=Integer.parseInt(request.getParameter("pNo"));
		int cNo;
		try {
			cNo=Integer.parseInt(request.getParameter("cNo"));
		}catch(NumberFormatException e) {
			cNo=-1;
		}
		Lector l=null;
		LectorWatch lw=null;
		if(cNo==-1) {
			l=new LectorService().selectLector(pNo);
		}else {
			lw=new LectorService().selectLectorWatchView(cNo);
		}
		System.out.println(l);
		System.out.println(lw);
		String src=l!=null?l.getLectorOriginalVideo():lw.getWatchOriginalVideo();
		//response.setContentType("application/json;charset=UTF-8");
		response.getWriter().write(src);
	
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
