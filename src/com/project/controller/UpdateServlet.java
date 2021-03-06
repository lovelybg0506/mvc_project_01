package com.project.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.project.dao.BoardDAO;
import com.project.dto.BoardVO;

/**
 * Servlet implementation class UpdateServlet
 */
@WebServlet("/update.do")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	
		HttpSession session = request.getSession();
		BoardVO bvo = (BoardVO)session.getAttribute("loginUser");
		if(bvo != null) {
			String url="view.jsp";
			
			RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			dispatcher.forward(request, response);
		}else {
			response.sendRedirect("update.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		request.setCharacterEncoding("utf-8");
		System.out.println(request.getParameter("name"));
		HttpSession session = request.getSession();
		
		BoardVO member = new BoardVO();
		member.setId(request.getParameter("id"));
		member.setPwd(request.getParameter("pwd"));
		member.setName(request.getParameter("name"));
		member.setEmail(request.getParameter("email"));
		member.setPhone(request.getParameter("phone"));
		member.setGender(request.getParameter("gender"));
		
		BoardDAO bdao = BoardDAO.getInstance();
		bdao.updateMember(member);
		
		BoardVO bvo = bdao.getMember(member.getId());
		request.setAttribute("member",bvo);
		request.setAttribute("message", "?????? ????????? ?????????????????????.");
		
		session.setAttribute("loginUser", bvo);
		
		int result = bdao.userCheck(member.getId(), member.getPwd());
		session.setAttribute("result",result); // setAttribute(String name, Object value)
		
		String url = "main.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
	}

}
