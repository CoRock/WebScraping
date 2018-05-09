package net.address.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

 public class MemberController 
 	extends javax.servlet.http.HttpServlet 
 	implements javax.servlet.Servlet {
	 protected void doProcess(HttpServletRequest request, HttpServletResponse response) 
	 	throws ServletException, IOException {
		 String RequestURI=request.getRequestURI();
		 String contextPath=request.getContextPath();
		 String command=RequestURI.substring(contextPath.length());
		 ActionForward forward=null;
		 Action action=null;
		   
		   if(command.equals("/CaffeineGuitarJoin.me")){
			   forward=new ActionForward();
			   forward.setRedirect(false);
			   forward.setPath("./register.jsp");
		   }else if(command.equals("/CaffeineGuitarLogin.me")){
			   forward=new ActionForward();
			   forward.setRedirect(false);
			   forward.setPath("./login.jsp");
		   }else if(command.equals("/CaffeineGuitarLoginAction.me")){
			   action = new MemberLoginAction();
			   try{
				   forward=action.execute(request, response);
			   }catch(Exception e){
				   e.printStackTrace();
			   }
		   }else if(command.equals("/CaffeineGuitarJoinAction.me")){
			   action = new MemberJoinAction();
			   try{
				   forward=action.execute(request, response);
			   }catch(Exception e){
				   e.printStackTrace();
			   }
		   }/*else if(command.equals("/MemberDeleteAction.me")){
			   action = new MemberDeleteAction();
			   try{
				   forward=action.execute(request, response);
			   }catch(Exception e){
				   e.printStackTrace();
			   }
		   }else if(command.equals("/MemberList.me")){
			   action = new MemberListAction();
			   try{
				   forward=action.execute(request, response);
			   }catch(Exception e){
				   e.printStackTrace();
			   }
		   }else if(command.equals("/MemberViewAction.me")){
			   action = new MemberViewAction();
			   try{
				   forward=action.execute(request, response);
			   }catch(Exception e){
				   e.printStackTrace();
			   }
		   
		   }else if(command.equals("/MemberLoginAction.me")){
			   action = new MemberLoginAction();
			   try{
				   forward=action.execute(request, response);
			   }catch(Exception e){
				   e.printStackTrace();
			   }
		   }else if(command.equals("/MemberJoinAction.me")){
			   action = new MemberJoinAction();
			   try{
				   forward=action.execute(request, response);
			   }catch(Exception e){
				   e.printStackTrace();
			   }
		   }else if(command.equals("/MemberInfo.me")){
			   forward=new ActionForward();
			   forward.setRedirect(false);
			   forward.setPath("./MemberView/MemberInfo.jsp");
		   }else if(command.equals("/MyInfo.me")){
			   forward=new ActionForward();
			   forward.setRedirect(false);
			   forward.setPath("./MemberView/MyInfo.jsp");
		   }else if(command.equals("/MemberModify.me")){
			   forward=new ActionForward();
			   forward.setRedirect(false);
			   forward.setPath("./MemberView/MemberModify.jsp");
		   }else if(command.equals("/MemberModifyDB.me")){
			   forward=new ActionForward();
			   forward.setRedirect(false);
			   forward.setPath("./MemberView/MemberModifyDB.jsp");
		   }*/
			   
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