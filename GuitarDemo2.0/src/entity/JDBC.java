package entity;

import java.sql.*;

public class JDBC{
	public static Connection getConnection(){
		String driver="org.sqlite.JDBC";
		String sql="jdbc:sqlite://d:/guitar.db3";
		Connection conn=null;
		try{
			Class.forName(driver);
			conn = DriverManager.getConnection(sql);
		}catch(Exception e){
			e.printStackTrace();
		}
		return conn;		
	}
}
