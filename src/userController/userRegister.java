package userController;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import userModel.userDao;
import userModel.userP;

@WebServlet("/userRegister")
public class userRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String name = request.getParameter("uname");
		String email = request.getParameter("uemail");
		String gender = request.getParameter("ugen");
		String dob = request.getParameter("udob");
		String pass = request.getParameter("upass");
		String cupass = request.getParameter("cupass");

		
		System.out.print(name);
		System.out.print(gender);
		System.out.print(dob);
		System.out.print(email);
		System.out.print(pass);
		System.out.print(cupass);

		name.trim();
  		dob.trim();
  		gender.trim();
		email.trim(); 
		pass.trim();
		cupass.trim();
	    userDao ud = new userDao();
		userP p = new userP(name,gender,dob,email,pass);

		
		
		
try {
	if(!ud.checkUser(email)){
		
	if(pass.equals(cupass)){
		ud.addData(p);	
		
	}
	else if(pass!=cupass)
	{
		request.getRequestDispatcher("userRegister.jsp").include(request, response);
		out.print("<!DOCTYPE html>");
		out.print("<html>");
		out.print("<head>");
		out.print("<meta charset='0ISO-8859-1'>");
		out.print("<title>Insert title here</title>");
		out.print("<style>");
		out.print("p{");
		out.print("background-color: red;");
		out.print("text-align:center;");
		out.print("color:white;");
		out.print("width:60%;");
		out.print("}");
		out.print("h2{");
		out.print("color :red;");
		out.print("text-align:center;");
		out.print("width:60%;");
		out.print("display: flex;");
		out.print("position:relative;");
		out.print("top : 20px;");
		out.print("}");
		out.print("</style>");
		out.print("</head>");
		out.print("<body>");
		out.print("<marquee scrollamount='15'><h2><p> ! Both Psswords are Different</p></h2></marquee>");
		out.print("</body>");
		out.print("</html");
	
	}
	}
	else if(ud.checkUser(email)){
		request.getRequestDispatcher("userRegister.jsp").include(request, response);

	}
} catch (ClassNotFoundException | SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
