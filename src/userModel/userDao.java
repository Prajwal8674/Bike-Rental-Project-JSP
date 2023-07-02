package userModel;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;


public class userDao {
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
	 PreparedStatement ps =con.prepareStatement("SELECT * FROM userdata WHERE email=?");
	 ps.setString(1, email);
	 ResultSet rs = ps.executeQuery() ;
	
	 if(rs.absolute(1))
	 return true;
		
     con.close() ;
   	 return false;						
}

public int addData(userP p) throws ClassNotFoundException, SQLException{
	 String sql = "insert into userdata (username,gender,birthDate,email,password) values(?,?,?,?,?)";
	 Connection con = getConnect();
	 PreparedStatement  ps = con.prepareStatement(sql);
	
	 ps.setString(1, p.getUname());
	 ps.setString(2, p.getUgen());
	 ps.setString(3, p.getUdob());
	 ps.setString(4, p.getUemail());
	 ps.setString(5, p.getUpass());

	 int a = ps.executeUpdate();
	 con.close();
	
	 return a;
}
public boolean checkForLogin(String email , String pass ) throws ClassNotFoundException, SQLException{
	 boolean check = false;
	 Class.forName(driver);
	 Connection con =(Connection) DriverManager.getConnection(url,dbname,dbpass);
	 PreparedStatement ps = con.prepareStatement("select * from userdata where email=? and password=?");
	
	 ps.setString(1,email);
	 ps.setString(2,pass);

	 ResultSet rs = ps.executeQuery();
	 check=rs.next();
	
	 return check;
	
}
/*public userP getOneUser(int id) throws ClassNotFoundException, SQLException {
	Connection con = getConnect();

	 PreparedStatement ps = con.prepareStatement("SELECT * FROM userdata WHERE id=?");
	 ps.setInt(1,id);
	
	 ResultSet rs = ps.executeQuery();
	 rs.absolute(1);
	 userP p = new userP(rs.getInt(1),rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),rs.getString(6));
	 return p;
}*/
/* showed vehicle to the user from the adminDaoo */

}
