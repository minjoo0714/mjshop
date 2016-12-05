package com.member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class MemberDAO {
	
	private Connection conn;
	
	public MemberDAO(Connection conn)
	{
		this.conn = conn;
	}
	
	public int insertUser(MemberDTO dto)
	{
		int  result = 0;
		
		PreparedStatement pstmt = null;
		String sql;
		
		try {
			sql = "INSERT INTO MJ_MEMBER(MEMBER_NUM, ID, NAME, PWD) VALUES(MEMBER_SEQ.NEXTVAL, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getName());
			pstmt.setString(3, dto.getPwd());
			result = pstmt.executeUpdate();
			pstmt.close();
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return result;
	}
	
	public int selectPwd(String id,String pwd){
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
		int flag=0;
		try {
			sql = "SELECT COUNT(*) AS COUNT FROM MJ_MEMBER WHERE ID=? AND PWD = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			rs = pstmt.executeQuery();
			while(rs.next()){
				flag=rs.getInt("COUNT");
			}
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return flag;
	}
	
	
	
	
}











