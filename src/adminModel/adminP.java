package adminModel;

public class adminP {

	private int aid;
	private String aname;
	private String agen;
	private String adob;
	private String aemail;
	private String apass;

	
	public adminP() {
		super();
		// TODO Auto-generated constructor stub
	}


	public adminP(int aid, String aname, String agen, String adob, String aemail, String apass) {
		super();
		this.aid = aid;
		this.aname = aname;
		this.agen = agen;
		this.adob = adob;
		this.aemail = aemail;
		this.apass = apass;
	}


	public adminP(String aname, String agen, String adob, String aemail, String apass) {
		super();
		this.aname = aname;
		this.agen = agen;
		this.adob = adob;
		this.aemail = aemail;
		this.apass = apass;
	}


	public int getAid() {
		return aid;
	}


	public void setAid(int aid) {
		this.aid = aid;
	}


	public String getAname() {
		return aname;
	}


	public void setAname(String aname) {
		this.aname = aname;
	}


	public String getAgen() {
		return agen;
	}


	public void setAgen(String agen) {
		this.agen = agen;
	}


	public String getAdob() {
		return adob;
	}


	public void setAdob(String adob) {
		this.adob = adob;
	}


	public String getAemail() {
		return aemail;
	}


	public void setAemail(String aemail) {
		this.aemail = aemail;
	}


	public String getApass() {
		return apass;
	}


	public void setApass(String apass) {
		this.apass = apass;
	}

	
	
}
