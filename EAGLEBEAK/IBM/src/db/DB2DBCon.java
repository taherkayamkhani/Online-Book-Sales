package db;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class DB2DBCon {
	
	
	public static Connection getCon(){
		Connection con = null;
		try{
			Class.forName("com.ibm.db2.jcc.DB2Driver");
			  con = DriverManager.getConnection("jdbc:db2://localhost:50000/sample","db2admin","dennis");
			
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}

	public static void main(String[] args)throws Exception {
		Connection con =  getCon() ;
		Statement st = con.createStatement();
	 	ResultSet rs = st.executeQuery("SELECT * FROM tab1");
		while(rs.next()){
			System.out.println(rs.getString(1));
		}
		
	}
}
