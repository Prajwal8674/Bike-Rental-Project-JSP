package adminModel;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;


public class adminDao {
	String driver = "com.mysql.jdbc.Driver";
	String dbName = "bikerentalproject_jsp";
	String url    = "jdbc:mysql://localhost:3306/"+dbName;
	String dbname ="root";
	String dbpass = "admin01";
	
Connection getConnect() throws ClassNotFoundException, SQLException{
		
		Class.forName(driver);
		return  (Connection) DriverManager.getConnection(url,dbname,dbpass);
	}

	public boolean checkUser(String email) throws SQLException, ClassNotFoundException{
	Class.forName(driver) ;
	Connection con =(Connection) DriverManager.getConnection(url,dbname,dbpass);
	PreparedStatement ps =
	con.prepareStatement("SELECT * FROM admindata WHERE email=?");
	ps.setString(1, email);
	ResultSet rs = ps.executeQuery() ;
	
	if(rs.absolute(1))
		return true;
		
		con.close() ;
		return false;						
}
	
    public int addData(adminP p) throws ClassNotFoundException, SQLException{
	String sql = "insert into admindata (username,gender,birthDate,email,password) values(?,?,?,?,?)";
	Connection con = getConnect();
	PreparedStatement  ps = con.prepareStatement(sql);
	
	ps.setString(1, p.getAname());
	ps.setString(2, p.getAgen());
	ps.setString(3, p.getAdob());
	ps.setString(4, p.getAemail());
	ps.setString(5, p.getApass());

	int a = ps.executeUpdate();
	con.close();
	
	 return a;
 }
 }
