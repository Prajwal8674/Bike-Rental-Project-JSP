package adminController;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import adminModel.adminDao;
import adminModel.adminP;

	
@MultipartConfig
@WebServlet("/addImage")
public class addImage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public addImage() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		
		
		

		System.out.println("In do post method of Add Image servlet.");
		Part file=request.getPart("image");
		
		String imageFileName = null;
		String contentDisposition = file.getHeader("content-disposition");
		if (contentDisposition != null) {
		    String[] elements = contentDisposition.split(";");
		    for (String element : elements) {
		        if (element.trim().startsWith("filename")) {
		            imageFileName = element.substring(element.indexOf("=") + 1).trim().replace("\"", "");
		            break;
		        }
		    }
		}		
		String uploadPath="D:/eclipse/BikeRentalProject_JSP/WebContent/img/gallery/"+imageFileName;
		
		System.out.println("Upload Path : "+uploadPath);
		
		//Uploading Image to a folder
		
		try
		{
		
		FileOutputStream fos=new FileOutputStream(uploadPath);
		InputStream is=file.getInputStream();
		
		byte[] data=new byte[is.available()];
		is.read(data);
		fos.write(data);
		fos.close();
		
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}
	
	//getting database connection (jdbc code)
			String model = request.getParameter("model");
			String milage = request.getParameter("milage");
			String type=request.getParameter("type");
			String purpose=request.getParameter("purpose");
			int price = Integer.parseInt( request.getParameter("price"));
			
			Connection connection;
			try {
				connection = adminDao.getConnect();
			} catch (ClassNotFoundException | SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			try 
			{
				Class.forName("com.mysql.jdbc.Driver");
				connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/bikerentalproject_jsp","root","admin01");
				PreparedStatement stmt;
				String query="insert into vehicles(model,milage,price,type,purpose,image) values(?,?,?,?,?,?)";
				stmt=connection.prepareStatement(query);
				stmt.setString(1,model);
				stmt.setString(2,milage);
				stmt.setInt(3,price);
				stmt.setString(4,type);
				stmt.setString(5,purpose);
				stmt.setString(6,imageFileName);
				
				int row=stmt.executeUpdate(); // it returns no of rows affected.
				
				if(row>0)
				{
					System.out.println("Image added into database successfully.");
				    request.getRequestDispatcher("homeAdmin.jsp").forward(request, response);

				}
				
				else
				{
					System.out.println("Failed to upload image.");

				}
				
				
			}
			catch (Exception e)
			{
				System.out.println(e);
			}
			
		}

	private String extractFileName(Part file) {
		// TODO Auto-generated method stub
		return null;
	}

	private String getSubmittedFileName(Part file) {
		// TODO Auto-generated method stub
		return null;
	}


	}