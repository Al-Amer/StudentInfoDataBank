package javaClassObject;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

// this class to Connect to Date Base in XAMPP
//Localhost name:   localhost
//user name : pma
// Password : 1234567890

public class StudentDao {
	
	public static Connection getConnection() {
		Connection conn = null;
		try {
			Class.forName("com.mysql.jdbc.Drive");
			conn = DriverManager.getConnection("jdbc:mysql://localhost/studentjsp", "pma", "1234567890");
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return conn;

	}

	public static int save(StudentInfo s) {
		int status = 0;
		try {
			Connection conn = getConnection();
			PreparedStatement ps = conn.prepareStatement(
					"insert into studentable(name,password,email,gender,country)values(?,?,?,?,?)");
			ps.setString(1, s.getName());
			ps.setString(2, s.getPassword());
			ps.setString(3, s.getEmail());
			ps.setString(4, s.getGender());
			ps.setString(5, s.getCountry());
			
			status=ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;

	}
	
	public static int update(StudentInfo s) {
		int status = 0;
		try {
			Connection conn = getConnection();
			PreparedStatement ps = conn.prepareStatement(
					"update studentable set name=?,password=?,email=?,gender=?,country=? where id=?");
			ps.setString(1, s.getName());
			ps.setString(2, s.getPassword());
			ps.setString(3, s.getEmail());
			ps.setString(4, s.getGender());
			ps.setString(5, s.getCountry());
			ps.setInt(6, s.getId());
			status=ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;

	}
	
	public static int delete(StudentInfo s) {
		int status=0;
		try {
			Connection conn = getConnection();
			PreparedStatement ps = conn.prepareStatement("delete from studentable where id=?");
			ps.setInt(1, s.getId());		
			status=ps.executeUpdate();
			} catch (Exception e) {
				System.out.println(e);
			}
			return status;
		}
	
	public static List<StudentInfo> getAllRecordes(){
		List<StudentInfo> list = new ArrayList<StudentInfo>();
		try {
			Connection conn = getConnection();
			PreparedStatement ps = conn.prepareStatement("select * from studentable");
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				StudentInfo s = new StudentInfo();
				s.setId(rs.getInt("id"));
				s.setName(rs.getString("name"));
				s.setPassword(rs.getString("password"));
				s.setEmail(rs.getString("email"));
				s.setGender(rs.getString("gender"));
				s.setCountry(rs.getString("country"));
				list.add(s);
			} 
		}catch (Exception e) {
				System.out.println(e);
			}
		return list;		
	}
	
	public static StudentInfo getRecordById(int id) {
		StudentInfo s = null;
		try {
			Connection conn = getConnection();
			PreparedStatement ps = conn.prepareStatement("select * from studentable where id=?");
			ps.setInt(1, id);
			ResultSet rs= ps.executeQuery();
			while(rs.next()) {
				 s = new StudentInfo();
				s.setId(rs.getInt("id"));
				s.setName(rs.getString("name"));
				s.setPassword(rs.getString("password"));
				s.setEmail(rs.getString("email"));
				s.setGender(rs.getString("gender"));
				s.setCountry(rs.getString("country"));
			} 
		}catch(Exception e) {
			System.out.println(e);
		}return s;
	}
		
	

}
