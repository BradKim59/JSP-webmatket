package dto;
//data transefer object
import java.io.Serializable;

// 모델 클래스
// JSP : 자바빈즈(getter/setter, 기본 생성자, serializable)
public class Product implements Serializable{

	// 자바 직렬화에 사용, 
	private static final long serialVersionUID = 3618599846602713926L;
	
	private String productId;
	private String name;
	private int unitPrice;
	private String description;
	private String menufacturer;
	private String category;
	private long unitsInStock;
	private String conidition;
	
	//기본 생성자로 생성자 있는것처럼 빈자바 룰에 맞춰줌
	public Product() {};
	
	public Product(String productId, String name, int unitPrice) {
		this.productId = productId;
		this.name = name;
		this.unitPrice = unitPrice;
	}
	public String getProductId() {
		return productId;
	}
	public void setProductId(String productId) {
		this.productId = productId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getUnitPrice() {
		return unitPrice;
	}
	public void setUnitPrice(int unitPrice) {
		this.unitPrice = unitPrice;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getMenufacturer() {
		return menufacturer;
	}
	public void setMenufacturer(String menufacturer) {
		this.menufacturer = menufacturer;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public long getUnitsInStock(int i) {
		return unitsInStock;
	}
	public void setUnitsInStock(long unitsInStock) {
		this.unitsInStock = unitsInStock;
	}
	public String getConidition() {
		return conidition;
	}
	public void setConidition(String conidition) {
		this.conidition = conidition;
	}

	@Override
	public String toString() {
		return "Product [productId=" + productId + ", name=" + name + ", unitPrice=" + unitPrice + ", description="
				+ description + ", menufacturer=" + menufacturer + ", category=" + category + ", unitsInStock="
				+ unitsInStock + ", conidition=" + conidition + "]";
	}
	
	

}
