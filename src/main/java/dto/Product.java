package dto;
//data transefer object
import java.io.Serializable;

// 모델 클래스
// JSP : 자바빈즈(getter/setter, 기본 생성자, serializable) 일단 무시
// getter setter만 있으면 자바빈즈로 보낸다.
public class Product implements Serializable{

	// 자바 직렬화에 사용, 
	// 이 상태는 객체를 각기 생성하는것이 아니므로, 없어도 된다.
	private static final long serialVersionUID = 3618599846602713926L;
	
	private String productId;
	private String name;
	private int unitPrice;
	private String description;
	private String menufacturer;
	private String category;
	private int unitsInStock;
	private String conidition;
	
	//기본 생성자로 생성자 있는것처럼 빈자바 룰에 맞춰줌
	public Product() {};
	
	// javabeans 에서 action Tag 사용 시 parameter로 사용 예정
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
	public int getUnitsInStock() {
		return unitsInStock;
	}
	public void setUnitsInStock(int unitsInStock) {
		this.unitsInStock = unitsInStock;
	}
	public String getConidition() {
		return conidition;
	}
	public void setConidition(String conidition) {
		this.conidition = conidition;
	}

	@Override
	// toString이 없다면 각 객체의 해쉬코드, 메모리 주소값이 나온다.(실제 주소는 아님)
	public String toString() {
		return "Product [productId=" + productId + ", name=" + name + ", unitPrice=" + unitPrice + ", description="
				+ description + ", menufacturer=" + menufacturer + ", category=" + category + ", unitsInStock="
				+ unitsInStock + ", conidition=" + conidition + "]";
	}
	
	

}
