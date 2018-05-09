package net.address.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.board.db.*;

public class BoardDeleteAction implements Action {
	 public ActionForward execute(HttpServletRequest request,HttpServletResponse response) 
	 	throws Exception{
		 
		ActionForward forward = new ActionForward();
		request.setCharacterEncoding("euc-kr");
		
	   	boolean result=false;
	   	
	   	int num=Integer.parseInt(request.getParameter("num"));
	   	
	   	BoardDAO boarddao=new BoardDAO();
	  
	   	result=boarddao.boardDelete(num);
	   	if(result==false){
	   		System.out.println("게시판 삭제 실패");
	   		return null;
	   	}
	   	
	   	System.out.println("게시판 삭제 성공");
	   	forward.setRedirect(true);
   		forward.setPath("./BoardList.bo");
   		return forward;
	 }
}