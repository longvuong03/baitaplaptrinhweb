package pxu.edu.vn.baitapmot;

public class ProductModel {
	private int id;
	private String ProductName;
	public ProductModel() {
		super();
	}
	
	public ProductModel(int id, String productName) {
		super();
		this.id = id;
		this.ProductName = productName;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getProductName() {
		return ProductName;
	}
	public void setProductName(String productName) {
		ProductName = productName;
	}

	@Override
	public String toString() {
		return "ProductModel [id=" + id + ", ProductName=" + ProductName + "]";
	}
	
	
}
