package com.kh.lectorWatch.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.kh.lector.model.service.LectorService;
import com.kh.lectorWatch.model.vo.LectorWatch;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

/**
 * Servlet implementation class LectorWatchEndServlet
 */
@WebServlet("/lectorWatch/lectorWatchOpenEnd")
public class LectorWatchOpenEndServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LectorWatchOpenEndServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		if(!ServletFileUpload.isMultipartContent(request)) {
			request.setAttribute("msg", "업로드 에러");
			request.setAttribute("loc", "lectorWatch/lectorwatchOpen");
			request.getRequestDispatcher("/views/common/msg.jsp").forward(request, response);
		}
		
		String path=getServletContext().getRealPath("/uploadAdd/lector/");
		int maxSize=1024*1024*30;
		MultipartRequest mr=new MultipartRequest(request,path,maxSize,"UTF-8",new DefaultFileRenamePolicy());
		
		int no=Integer.parseInt(mr.getParameter("lectorRef"));
		String writer=mr.getParameter("refWriter");
		String title=mr.getParameter("refTitle");
		String intro=mr.getParameter("refIntro");
		String oriFileName=mr.getOriginalFileName("refLectorVideo");
		String renamedFileName=mr.getFilesystemName("refLectorVideo");
		int price=Integer.parseInt(mr.getParameter("price"));
		int level=Integer.parseInt(mr.getParameter("lectorLevel"));

		
		LectorWatch lw=new LectorWatch(0,no,title,writer,intro,price,oriFileName,renamedFileName,null,level);
		int result=new LectorService().insertLectorWatch(lw);
		
		String msg="";
		String loc="";
		
		if(result>0) {
			msg="등록 완료";
			loc="/lector/lectorWatch?no="+mr.getParameter("lectorRef");
		}
		else {
			msg="등록 실패";
			loc="/lectorWatch/lectorwatchOpen";
		}
		request.setAttribute("msg", msg);
		request.setAttribute("loc", loc);
		request.getRequestDispatcher("/views/common/msg.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
