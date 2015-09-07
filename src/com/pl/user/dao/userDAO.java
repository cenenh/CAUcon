package com.pl.user.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.pl.user.vo.userVO;
import com.pl.util.JDBCUtil;
import com.pl.util.ResultStatus;
public class userDAO {

	
	private final String USER_ADD = "insert into pl_project.user(userId, name, password) values(?,?,?)";
	private final String USER_GET = "select * from pl_project.user where userId=? and password=?";

	public userVO getUser(userVO vo) {
	
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		userVO user = null;

		try {
			conn = JDBCUtil.getConnection();
			pstmt = conn.prepareStatement(USER_GET);
			int idx = 1;
			pstmt.setString(idx++, vo.getUserId());
			pstmt.setString(idx++, vo.getPassword());
			rs = pstmt.executeQuery();

			if (rs.next()) {
				user = toVO(rs);
			}
		} catch (SQLException ex) {
			System.out.println("SQLException : " + ex.getMessage());
		} finally {
			JDBCUtil.close(conn, pstmt, rs);
		} // finally end
		return user;
	}
	
	public int addUser(userVO vo) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		int result = 0;

		try {
			conn = JDBCUtil.getConnection();
			pstmt = conn.prepareStatement(USER_ADD);

			int idx = 1;
			pstmt.setString(idx++, vo.getUserId());
			pstmt.setString(idx++, vo.getName());
			pstmt.setString(idx++, vo.getPassword());
			result = pstmt.executeUpdate();

		} catch (SQLException ex) {
			System.out.println(ex.getMessage());
			result = ResultStatus.EXISTINGUSER;
		} finally {
			JDBCUtil.close(conn, pstmt);
		}
		return result;
	}

	public userVO toVO(ResultSet rs) throws SQLException {
		userVO user = new userVO();
		user.setUserId(rs.getString("userId"));
		user.setName(rs.getString("name"));
		user.setPassword(rs.getString("password"));
		return user;
	}

	

}
