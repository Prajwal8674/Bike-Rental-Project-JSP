package adminModel;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

import userModel.userP;
import adminModel.vehicleP;;


public class adminDao {
	static String driver = "com.mysql.jdbc.Driver";
	static String dbName = "bikerentalproject_jsp";
	static String url    = "jdbc:mysql://localhost:3306/"+dbName;
	static String dbname ="root";
	static String dbpass = "admin01";
	
public static Connection getConnect() throws ClassNotFoundException, SQLException{
		
		Class.forName(driver);
		return  (Connection) DriverManager.getConnection(url,dbname,dbpass);
	}
         
	public boolean checkAdmin(String email) throws SQLException, ClassNotFoundException{
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
    public boolean checkForLogin(String email , String pass ) throws ClassNotFoundException, SQLException{
    	boolean check = false;
    	Class.forName(driver);
    	Connection con =(Connection) DriverManager.getConnection(url,dbname,dbpass);
    	PreparedStatement ps = con.prepareStatement("select * from admindata where email=? and password=?");
    	
    	ps.setString(1,email);
    	ps.setString(2,pass);

    	ResultSet rs = ps.executeQuery();
    	check=rs.next();
    	
    	return check;
    	
    }
    
    public int delById(int id) throws ClassNotFoundException, SQLException{
		  String sql = "DELETE FROM userdata WHERE id = ?";
		  Connection con=getConnect();
		  PreparedStatement ps=con.prepareStatement(sql);
		  ps.setInt(1,id);
		  int a = ps.executeUpdate();
	    	
		  return a;
		  
	  }
    public int upRider(userP p) throws ClassNotFoundException, SQLException{
    	String sql = "UPDATE userdata SET username=?,gender=?,birthDate=?,email=?,password=? WHERE id=?";
    	Connection con = getConnect();
    	PreparedStatement  ps = con.prepareStatement(sql);

    	ps.setString(1, p.getUname());
    	ps.setString(2, p.getUgen());
    	ps.setString(3, p.getUdob());
    	ps.setString(4, p.getUemail());
    	ps.setString(5, p.getUpass());
    	ps.setInt(6, p.getId());

    	int a = ps.executeUpdate();
    	con.close();
    	return a;
    }
    public userP getOneRider(int id) throws ClassNotFoundException, SQLException {
        Connection con = getConnect();
        PreparedStatement ps = con.prepareStatement("SELECT * FROM userdata WHERE id=?");
        ps.setInt(1, id);

        ResultSet rs = ps.executeQuery();
        rs.next();  // Move the cursor to the first row
        userP p = new userP(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6));
        return p;
    }
    
    public ArrayList<userP> getallRiders() throws ClassNotFoundException, SQLException{
    	String sql = "select * from userdata";
    	Connection con = getConnect();
    	Statement  s = (Statement) con.createStatement();
    	ResultSet rs = s.executeQuery(sql);
    	ArrayList<userP> getallRiders =new ArrayList<>();
    	
    	while(rs.next()){
    		
    		userP p = new userP(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6));
    		getallRiders.add(p);
    	}
    	con.close();

		return getallRiders;
    	
    }

    public ArrayList<vehicleP> getallVehicles() throws ClassNotFoundException, SQLException{
    	String sql = "select * from vehicles";
    	Connection con = getConnect();
    	Statement  s = (Statement) con.createStatement();
    	ResultSet rs = s.executeQuery(sql);
    	ArrayList<vehicleP> getallVehicles =new ArrayList<>();
    	
    	while(rs.next()){
    		vehicleP v = new vehicleP(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getInt(4),rs.getString(5),rs.getString(6),rs.getString(7));
    		getallVehicles.add(v);
    	}
    	con.close();

		return getallVehicles;
    	
    }
    public int delVbyId(int id) throws ClassNotFoundException, SQLException{
		  String sql = "DELETE FROM vehicles WHERE id = ?";
		  Connection con=getConnect();
		  PreparedStatement ps=con.prepareStatement(sql);
		  ps.setInt(1,id);
		  int a = ps.executeUpdate();
	    	
		  return a;
		  
	  }
    public vehicleP getOneVehicle(int id) throws ClassNotFoundException, SQLException {
        Connection con = getConnect();
        PreparedStatement ps = con.prepareStatement("SELECT * FROM vehicles WHERE id=?");
        vehicleP v= new vehicleP();
        ps.setInt(1, id);
        ResultSet rs = ps.executeQuery();
        while(rs.next()){
        	v.setId(rs.getInt(1));
        	v.setModel(rs.getString(2));
        	v.setMilage(rs.getString(3));
        	v.setPrice(rs.getInt(4));
        	v.setType(rs.getString(5));
        	v.setPurpose(rs.getString(6));
        	v.setImage(rs.getString(7));
        }
        
        return v;
    }

 }
