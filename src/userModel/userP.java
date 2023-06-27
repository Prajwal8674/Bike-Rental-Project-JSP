package userModel;

public class userP {
	
private int id;
private String uname;
private String ugen;
private String udob;
private String uemail;
private String upass;




	public userP() {
		super();
		// TODO Auto-generated constructor stub
	}



	


	public userP(int id, String uname, String ugen, String udob, String uemail, String upass) {
		super();
		this.id = id;
		this.uname = uname;
		this.ugen = ugen;
		this.udob = udob;
		this.uemail = uemail;
		this.upass = upass;
	}

	public userP(String uname, String ugen, String udob,String uemail, String upass) {
		super();
		this.uname = uname;
		this.uemail = uemail;
		this.ugen = ugen;
		this.udob = udob;
		this.upass = upass;
	}



	public int getId() {
		return id;
	}



	public void setId(int id) {
		this.id = id;
	}



	public String getUname() {
		return uname;
	}



	public void setUname(String uname) {
		this.uname = uname;
	}



	public String getUemail() {
		return uemail;
	}



	public void setUemail(String uemail) {
		this.uemail = uemail;
	}



	public String getUgen() {
		return ugen;
	}



	public void setUgen(String ugen) {
		this.ugen = ugen;
	}



	public String getUdob() {
		return udob;
	}



	public void setUdob(String udob) {
		this.udob = udob;
	}



	public String getUpass() {
		return upass;
	}



	public void setUpass(String upass) {
		this.upass = upass;
	}
	
	
	
}
