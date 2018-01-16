package test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import bean.Emp;

public class Test {
		public static Connection getcon(){
			Connection con = null;
			try {
				Class.forName("oracle.jdbc.OracleDriver");
				String url="jdbc:oracle:thin:@localhost:1521:orcl";
				con=DriverManager.getConnection(url, "scott", "123");
			} catch (Exception e) {
				
				e.printStackTrace();
			}
			return con;
			
		}
	/**
	 * @param args
	 */
	public static void main(String[] args) {
		ResultSet rs=null;
		List<Emp>list=new ArrayList<Emp>();
		try {
			String sql="select *from emp";
			PreparedStatement ps=getcon().prepareStatement(sql);
			rs=ps.executeQuery();
			while (rs.next()) {
				Emp emp=new Emp();
				emp.setEid(rs.getInt(1));
				emp.setEname(rs.getString(2));
				emp.setSar(rs.getInt(5));
				list.add(emp);
				for (Emp e : list) {
					System.out.println(e.getEid());
				}
				
				
			}
		} catch (Exception e) {
			
			e.printStackTrace();
		}

	}

}
