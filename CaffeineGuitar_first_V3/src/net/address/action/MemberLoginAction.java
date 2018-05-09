package net.address.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.member.db.MemberBean;
import net.member.db.MemberDAO;

public class MemberLoginAction implements Action{
	public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception {
		 MemberDAO memberdao=new MemberDAO();
		 MemberBean memberdata=new MemberBean();
		 ActionForward forward=new ActionForward();
		 
		 try{
	   			memberdata.setID(request.getParameter("email"));
	   			memberdata.setPASSWORD(request.getParameter("password"));
	   			String email = request.getParameter("email");
	   			String pw = request.getParameter("password");
	   			memberdata=memberdao.getDetail(email);
	   			String id = memberdata.getID();
	   			
	   			System.out.println(id);
	   			
	   			if(memberdata.getEMAIL().equals(email) & memberdata.getPASSWORD().equals(pw)) {
	   				HttpSession hs = request.getSession();
	   				hs.setAttribute("id", id);
	   				forward.setRedirect(true);
	   				forward.setPath("./login_first.jsp");
	   				return forward;	   				
	   			} else {
	   				PrintWriter script = response.getWriter();
	   				script.println("<script>");
	   				script.println("alert('잘못된 아이디나 비밀번호입니다.');");
	   				script.println("history.back();");
	   				script.println("</script>");
	   				forward.setRedirect(true);
	   				forward.setPath("./CaffeineGuitarLogin.jsp");
	   				return forward;	
	   			}
		   	
		   		
		   		
	  		}catch(Exception ex){
	   			ex.printStackTrace();
	   		}
		 
		 return forward;
	 }
}
