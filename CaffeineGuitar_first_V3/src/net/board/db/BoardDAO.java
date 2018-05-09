package net.board.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class BoardDAO {
	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;
	
	public BoardDAO() {
		try{
			Context init = new InitialContext();
	  		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
	  		con = ds.getConnection();
		}catch(Exception ex){
			System.out.println("DB 연결 실패 : " + ex);
			return;
		}
	}
	
	//글의 개수 구하기.
	public int getListCount() {
		int x= 0;
		
		try{
			pstmt=con.prepareStatement("select count(*) from CAFFEINEGUITAR");
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				x=rs.getInt(1);
			}
		}catch(Exception ex){
			System.out.println("getListCount 에러: " + ex);			
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
		}
		return x;
	}
	
	//글 목록 보기.	
	public List getBoardList(int page,int limit){
		String board_list_sql="select * from "+
		"(select rownum rnum,BOARDNUM,BOARDIMG,TOPIMG,"+
		"TITLE,ENGNAME,MONEY,PERIOD,"+
		"STUDENT,AIM,TARGET, LEVEL, DESCRIPTION from "+
		"where rnum>=? and rnum<=?";
		
		List list = new ArrayList();
		
		int startrow=(page-1)*10+1; //읽기 시작할 row 번호.
		int endrow=startrow+limit-1; //읽을 마지막 row 번호.		
		try{
			pstmt = con.prepareStatement(board_list_sql);
			pstmt.setInt(1, startrow);
			pstmt.setInt(2, endrow);
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				BoardBean board = new BoardBean();
				board.setBOARDNUM(rs.getInt("BOARDNUM"));
				board.setBOARDIMG(rs.getString("BOARDIMG"));
				board.setTOPIMG(rs.getString("TOPIMG"));
				board.setTITLE(rs.getString("TITLE"));
				board.setENGNAME(rs.getString("ENGNAME"));
				board.setMONEY(rs.getInt("MONEY"));
				board.setPERIOD(rs.getInt("PERIOD"));
				board.setSTUDENT(rs.getString("STUDENT"));
				board.setAIM(rs.getString("AIM"));
				board.setTARGET(rs.getString("TARGET"));
				board.setLEVEL(rs.getString("LEVEL"));
				board.setDESCRIPTION(rs.getString("DESCRIPTION"));
				list.add(board);
			}
			
			return list;
		}catch(Exception ex){
			System.out.println("getBoardList 에러 : " + ex);
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
		}
		return null;
	}
	
	//글 내용 보기.
	public BoardBean getDetail(int num) throws Exception{
		BoardBean board = null;
		try{
			pstmt = con.prepareStatement(
					"select * from CAFFEINEGUITAR where BOARDNUM = ?");
			pstmt.setInt(1, num);
			
			rs= pstmt.executeQuery();
			
			if(rs.next()){
				board = new BoardBean();
				board.setBOARDNUM(rs.getInt("BOARDNUM"));
				board.setBOARDIMG(rs.getString("BOARDIMG"));
				board.setTOPIMG(rs.getString("TOPIMG"));
				board.setTITLE(rs.getString("TITLE"));
				board.setENGNAME(rs.getString("ENGNAME"));
				board.setMONEY(rs.getInt("MONEY"));
				board.setPERIOD(rs.getInt("PERIOD"));
				board.setSTUDENT(rs.getString("STUDENT"));
				board.setAIM(rs.getString("AIM"));
				board.setTARGET(rs.getString("TARGET"));
				board.setLEVEL(rs.getString("LEVEL"));
				board.setDESCRIPTION(rs.getString("DESCRIPTION"));
			}
			return board;
		}catch(Exception ex){
			System.out.println("getDetail 에러 : " + ex);
		}finally{
			if(rs!=null)try{rs.close();}catch(SQLException ex){}
			if(pstmt !=null)try{pstmt.close();}catch(SQLException ex){}
		}
		return null;
	}
	
	//글 등록.
	public boolean boardInsert(BoardBean board){
		int num =0;
		String sql="";
		
		int result=0;
		
		try{
			pstmt=con.prepareStatement("select max(board_num) from CAFFEINEGUITAR");
			rs = pstmt.executeQuery();
			
			if(rs.next())
				num =rs.getInt(1)+1;
			else
				num=1;
			
			sql="insert into CAFFEINEGUITAR (BOARDNUM,BOARDIMG,TOPIMG,TITLE,";
			sql+="ENGNAME, MONEY, PERIOD,"+
				"STUDENT,AIM,TARGET,"+
				"LEVEL, DESCRIPTION) values(?,?,?,?,?,?,?,?,?,?,?,?)";
			
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.setString(2, board.getBOARDIMG());
			pstmt.setString(3, board.getTOPIMG());
			pstmt.setString(4, board.getTITLE());
			pstmt.setString(5, board.getENGNAME());
			pstmt.setInt(6, board.getMONEY());
			pstmt.setInt(7, board.getPERIOD());
			pstmt.setString(8, board.getSTUDENT());
			pstmt.setString(9, board.getAIM());
			pstmt.setString(10, board.getTARGET());
			pstmt.setString(11, board.getLEVEL());
			pstmt.setString(12, board.getDESCRIPTION());
			
			result=pstmt.executeUpdate();
			if(result==0)return false;
			
			return true;
		}catch(Exception ex){
			System.out.println("boardInsert 에러 : "+ex);
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
		}
		return false;
	}
	
	
	//글 수정.
	public boolean boardModify(BoardBean modifyboard) throws Exception{
		String sql="update CAFFEINEGUITAR set TITLE=?,DESCRIPTION=? where BOARDNUM=?";
		
		try{
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, modifyboard.getTITLE());
			pstmt.setString(2, modifyboard.getDESCRIPTION());
			pstmt.setInt(3, modifyboard.getBOARDNUM());
			pstmt.executeUpdate();
			return true;
		}catch(Exception ex){
			System.out.println("boardModify 에러 : " + ex);
		}finally{
			if(rs!=null)try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null)try{pstmt.close();}catch(SQLException ex){}
			}
		return false;
	}
	
	//글 삭제.
	public boolean boardDelete(int num){
		String board_delete_sql="delete from CAFFEINEGUITAR where BOARDNUM=?";
		
		int result=0;
		
		try{
			pstmt=con.prepareStatement(board_delete_sql);
			pstmt.setInt(1, num);
			result=pstmt.executeUpdate();
			if(result==0)return false;
			
			return true;
		}catch(Exception ex){
			System.out.println("boardDelete 에러 : "+ex);
		}finally{
			try{
				if(pstmt!=null)pstmt.close();
			}catch(Exception ex) {}
		}
		
		return false;
	}
}
	