package net.address.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import net.board.db.BoardDAO;
import net.board.db.BoardBean;

public class BoardAddAction implements Action {
	 public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BoardDAO boarddao=new BoardDAO();
	   	BoardBean boarddata=new BoardBean();
	   	ActionForward forward=new ActionForward();
	   	
		String realFolder="";
   		String saveFolder="boardupload";
   		
   		int fileSize=5*1024*1024;
   		
   		realFolder=request.getRealPath(saveFolder);
   		
   		boolean result=false;
   		
   		try{
   			
   			MultipartRequest multi=null;
   			
   			multi=new MultipartRequest(request,
   					realFolder,
   					fileSize,
   					"euc-kr",
   					new DefaultFileRenamePolicy());
   			
   			boarddata.setBOARDIMG(multi.getParameter("BOARDIMG"));
   			boarddata.setTOPIMG(multi.getParameter("TOPIMG"));
	   		boarddata.setTITLE(multi.getParameter("TITLE"));
	   		boarddata.setENGNAME(multi.getParameter("ENGNAME"));
	   		boarddata.setMONEY(Integer.parseInt(multi.getParameter("MONEY")));
   			boarddata.setPERIOD(Integer.parseInt(multi.getParameter("PERIOD")));
	   		boarddata.setSTUDENT(multi.getParameter("TITLE"));
	   		boarddata.setAIM(multi.getParameter("AIM"));
	   		boarddata.setTARGET(multi.getParameter("TARGET"));
   			boarddata.setLEVEL(multi.getParameter("LEVEL"));
	   		boarddata.setDESCRIPTION(multi.getParameter("DESCRIPTION"));
	   		
	   		result=boarddao.boardInsert(boarddata);
	   		
	   		if(result==false){
	   			System.out.println("게시판 등록 실패");
	   			return null;
	   		}
	   		System.out.println("게시판 등록 완료");
	   		
	   		forward.setRedirect(true);
	   		forward.setPath("./CaffeineGuitar.bo");
	   		return forward;
	   		
  		}catch(Exception ex){
   			ex.printStackTrace();
   		}
  		return null;
	}  	
}