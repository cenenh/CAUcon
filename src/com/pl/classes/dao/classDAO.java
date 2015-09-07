package com.pl.classes.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.pl.classes.vo.classVO;
import com.pl.util.*;


public class classDAO {
	
	String classroom_parameter = "514";
	String selectedDay = null;
	private String UPDATE_CLASS="update pl_project.class"+classroom_parameter+" set "+selectedDay+" = ? "+" where time = ?";
	private String GET_CLASS = "select * from pl_project.class"+classroom_parameter;
	private String DELETE_CLASS="update pl_project.class"+classroom_parameter+" set "+selectedDay+" = ? "+" where time = ? ";
	//classroom_parameter,selectedDay,time
	
	public classVO getClass(classVO vo,String classroom_parameter) {

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		classVO cvo = null;
		
		GET_CLASS = "select * from pl_project.class"+classroom_parameter;
		
		try {
			
			conn = JDBCUtil.getConnection();
			// ���� �غ�
			pstmt = conn.prepareStatement(GET_CLASS);
			rs = pstmt.executeQuery();

			// VO�� Binding �Ѵ�.
			if (rs.next()) {
				// 1 row = 1 VO ����
				cvo = new classVO();
				cvo.setTime(rs.getString("time"));
				cvo.setMon(rs.getString("mon"));
				cvo.setTue(rs.getString("tue"));
				cvo.setWed(rs.getString("wed"));
				cvo.setThr(rs.getString("Thr"));
				cvo.setFri(rs.getString("Fri"));
			}// if

		} catch (SQLException ex) {
			ex.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt, rs);
		}
		return cvo;
		// ===============================
	}
	
	public classVO toVO(ResultSet rs) throws SQLException {
		classVO classvo = new classVO();
		classvo.setTime(rs.getString("time"));
		classvo.setMon(rs.getString("mon"));
		classvo.setTue(rs.getString("tue"));
		classvo.setWed(rs.getString("wed"));
		classvo.setThr(rs.getString("thr"));
		classvo.setThr(rs.getString("fri"));
		
		return classvo;
	}
	
	public int deleteClass(classVO vo,String classroom_parameter,String selectedDay) {
		// ===============================
		// DB ���� ���� ����
		Connection conn = null;
		PreparedStatement pstmt = null;
		int result = 0;
		System.out.println(classroom_parameter+" class update-class() is called");
		DELETE_CLASS="update pl_project.class"+classroom_parameter+" set "+selectedDay+" = ? "+" where time = ?";
		
		
		try {
			conn = JDBCUtil.getConnection();

			pstmt = conn.prepareStatement(DELETE_CLASS);
			
			//private String UPDATE_CLASS="update pl_project.class"+classroom_parameter+" set "+selectedDay+" = ? "+" where time = ? ";
			//classroom_parameter,selectedDay,time
			
			int idx = 1;
			pstmt.setString(idx++,ResultStatus.NOCLASS);
			pstmt.setString(idx++,vo.getTime());
			result = pstmt.executeUpdate();

		} catch (SQLException ex) {
			ex.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt);
		}
		// ����� ����
		return result;
		// ===============================
	}
	public int updateClass(classVO vo,String classroom_parameter,String selectedDay) {
		// ===============================
		// DB ���� ���� ����
		Connection conn = null;
		PreparedStatement pstmt = null;
		int result = 0;
		System.out.println(classroom_parameter+" class update-class() is called");
		UPDATE_CLASS="update pl_project.class"+classroom_parameter+" set "+selectedDay+" = ? "+" where time = ?";	
		
		try {
			conn = JDBCUtil.getConnection();

			pstmt = conn.prepareStatement(UPDATE_CLASS);
	
			int idx = 1;
			if(selectedDay.equals(ResultStatus.Monday))
				pstmt.setString(idx++,vo.getMon());
			else if(selectedDay.equals(ResultStatus.Tuesday))
				pstmt.setString(idx++,vo.getTue());
			else if(selectedDay.equals(ResultStatus.Wednesday))
				pstmt.setString(idx++,vo.getWed());
			else if(selectedDay.equals(ResultStatus.Thursday))
				pstmt.setString(idx++,vo.getThr());
			else if(selectedDay.equals(ResultStatus.Friday))
				pstmt.setString(idx++,vo.getFri());
			pstmt.setString(idx++,vo.getTime());
			result = pstmt.executeUpdate();

		} catch (SQLException ex) {
			ex.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt);
		}
		System.out.println("UPDATE �Ϸ�");
		return result;
	}

	public List<classVO> getBoardList(classVO vo, String classroom_parameter) {
		// ===============================
		// DB ���� ���� ����
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<classVO> classList = new ArrayList<>(); // 7.0
		GET_CLASS = "select * from pl_project.class"+classroom_parameter;
		try {
			conn = JDBCUtil.getConnection();
			pstmt = conn.prepareStatement(GET_CLASS);
			rs = pstmt.executeQuery();

			// VO�� Binding �Ѵ�.
			while ( rs.next() ) {
				classVO classvo = new classVO();
				classvo.setTime(rs.getString("time"));
				classvo.setMon(rs.getString("mon"));
				classvo.setTue(rs.getString("tue"));
				classvo.setWed(rs.getString("wed"));
				classvo.setThr(rs.getString("thr"));
				classvo.setFri(rs.getString("fri"));
				classList.add(classvo);
			}// while

		} catch (SQLException ex) {
			ex.printStackTrace();
		} finally {
			// ���ҽ� ����, ������ ����..
			// Connection -> PreparedStatement -> ResultSet
			JDBCUtil.close(conn, pstmt, rs);
		}
		return classList;
	}


}
