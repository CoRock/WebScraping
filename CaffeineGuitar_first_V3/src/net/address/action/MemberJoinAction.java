package net.address.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import net.member.db.MemberBean;
import net.member.db.MemberDAO;

public class MemberJoinAction implements Action {
	public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception{
		MemberDAO memberdao=new MemberDAO();
	   	MemberBean memberdata=new MemberBean();
	   	ActionForward forward=new ActionForward();
	   	
		String realFolder="";
   		String saveFolder="memberupload";
   		
   		int fileSize=5*1024*1024;
   		
   		realFolder=request.getRealPath(saveFolder);
   		
   		boolean result=false;
   		try{   			
   			MultipartRequest multi=null;
   			
   			if (-1 < request.getContentType().indexOf("multipart/form-data")) {
   				System.out.println("if 들어옴??");
   			multi=new MultipartRequest(request,
   					realFolder,
   					fileSize,
   					"UTF-8",
   					new DefaultFileRenamePolicy());
   			}
   			String id = multi.getParameter("id");

   			System.out.println(id);
   			
   			System.out.println("파라미터 앞");
   			System.out.println(multi.getParameter("id"));
   			memberdata.setID(multi.getParameter("id"));
   			memberdata.setEMAIL(multi.getParameter("email"));
	   		memberdata.setPASSWORD(multi.getParameter("password"));
	   		
	   		result= MemberDAO.memberInsert(memberdata);

	   		if(result==false){
	   			System.out.println("회원 등록 실패");
	   			return null;
	   		}
	   		System.out.println("회원 등록 완료");
	   		HttpSession hs = request.getSession();
			hs.setAttribute("id", id);
	   		forward.setRedirect(true);
	   		forward.setPath("./CaffeineGuitarLogin.me");
	   		return forward;
	   		
  		}catch(Exception ex){
   			ex.printStackTrace();
   		}
  		return null;
	}  	
}
