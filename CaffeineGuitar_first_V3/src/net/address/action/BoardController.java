package net.address.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BoardController extends javax.servlet.http.HttpServlet 
	implements javax.servlet.Servlet {
 protected void doProcess(HttpServletRequest request, HttpServletResponse response) 
 	throws ServletException, IOException {
	 String RequestURI=request.getRequestURI();
	 String contextPath=request.getContextPath();
	 String command=RequestURI.substring(contextPath.length());
	 ActionForward forward=null;
	 Action action=null;
	   
	   if(command.equals("/CaffeineGuitar.bo")){
		   forward=new ActionForward();
		   forward.setRedirect(false);
		   forward.setPath("./index.jsp");
	   }else if(command.equals("/CaffeineGuitarLectureList.bo")){
		   forward=new ActionForward();
		   forward.setRedirect(false);
		   forward.setPath("./course.jsp");
	   }else if(command.equals("/CaffeineGuitarHelp.bo")){
		   forward=new ActionForward();
		   forward.setRedirect(false);
		   forward.setPath("./help.jsp");
	   }else if(command.equals("/CaffeineGuitarPrivacy.bo")){
		   forward=new ActionForward();
		   forward.setRedirect(false);
		   forward.setPath("./privacy.jsp");
	   }else if(command.equals("/CaffeineGuitarTerms.bo")){
		   forward=new ActionForward();
		   forward.setRedirect(false);
		   forward.setPath("./terms.jsp");
	   }else if(command.equals("/CaffeineGuitarBoardDeleteAction.bo")){
		   action = new BoardDeleteAction();
		   try{
			   forward=action.execute(request, response);
		   }catch(Exception e){
			   e.printStackTrace();
		   }
	   }else if(command.equals("/CaffeineGuitarBoardDetailAction.bo")){
		   action = new BoardDetailAction();
		   try{
			   forward=action.execute(request, response);
		   }catch(Exception e){
			   e.printStackTrace();
		   }
	   }else if(command.equals("/CaffeineGuitarBoardAddAction.bo")){
		   action = new BoardAddAction();
		   try{
			   forward=action.execute(request, response);
		   }catch(Exception e){
			   e.printStackTrace();
		   }
	   }else if(command.equals("/CaffeineGuitarBoardModifyAction.bo")){
		   action = new BoardModifyAction();
		   try{
			   forward=action.execute(request, response);
		   }catch(Exception e){
			   e.printStackTrace();
		   }
	   }else if(command.equals("/CaffeineGuitarBoardListAction.bo")){
		   action = new BoardListAction();
		   try{
			   forward=action.execute(request, response);
		   }catch(Exception e){
			   e.printStackTrace();
		   }
	   }
		   
	   if(forward.isRedirect()){
		   response.sendRedirect(forward.getPath());
	   }else{
		   RequestDispatcher dispatcher=
			   request.getRequestDispatcher(forward.getPath());
		   dispatcher.forward(request, response);
	   }
	   
	   
 }
protected void doGet(HttpServletRequest request, HttpServletResponse response) 
	throws ServletException, IOException {
	doProcess(request,response);
}  	

protected void doPost(HttpServletRequest request, HttpServletResponse response) 
	throws ServletException, IOException {
	doProcess(request,response);
}   	  	    
}