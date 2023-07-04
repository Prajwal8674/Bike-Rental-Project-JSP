package adminModel;

public class vehicleSoldToP {

	private int id;
	private String uemail;
	private String model;
	private int price;
	private String type;
	
	
	public vehicleSoldToP() {
		super();
		// TODO Auto-generated constructor stub
	}


	public vehicleSoldToP(String uemail, String model, String type, int price) {
		super();
		this.uemail = uemail;
		this.model = model;
		this.price = price;
		this.type = type;
	}

	public vehicleSoldToP(int id, String uemail, String model, String type, int price) {
		super();
		this.id = id;
		this.uemail = uemail;
		this.model = model;
		this.price = price;
		this.type = type;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getUemail() {
		return uemail;
	}



	public void setUemail(String uemail) {
		this.uemail = uemail;
	}



	public String getModel() {
		return model;
	}


	public void setModel(String model) {
		this.model = model;
	}


	public int getPrice() {
		return price;
	}


	public void setPrice(int price) {
		this.price = price;
	}


	public String getType() {
		return type;
	}


	public void setType(String type) {
		this.type = type;
	}
	
	

}
