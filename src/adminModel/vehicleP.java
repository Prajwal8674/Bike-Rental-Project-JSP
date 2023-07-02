package adminModel;

public class vehicleP {
	private int id;
	private String model;
	private String milage; 
	private int price;
	private String type;
	private String purpose;
	private String image;

	
	public vehicleP() {
		super();
		// TODO Auto-generated constructor stub
	}

	public vehicleP(String model, String milage, int price, String type, String purpose, String image) {
		super();
		this.model = model;
		this.milage = milage;
		this.price = price;
		this.type = type;
		this.purpose = purpose;
		this.image = image;
	}

	public vehicleP(int id, String model, String milage, int price, String type, String purpose, String image) {
		super();
		this.id = id;
		this.model = model;
		this.milage = milage;
		this.price = price;
		this.type = type;
		this.purpose = purpose;
		this.image = image;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public String getMilage() {
		return milage;
	}

	public void setMilage(String milage) {
		this.milage = milage;
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

	public String getPurpose() {
		return purpose;
	}

	public void setPurpose(String purpose) {
		this.purpose = purpose;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}


	
}
