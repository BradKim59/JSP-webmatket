package dao;
//data access object

import java.util.ArrayList;
import java.util.List;

import dto.Product;


// product에 대한 기능을 정의
public class ProductRepository {
	// ArrayList는 클래스
	// List는 인터페이스, 생성시 어떠한 리스트 종류도 받아들일 수 있다.
	private List<Product> products = new ArrayList<>();
	
	// 하나의 객체를 생성 한 후 인스턴스를 재사용하는 싱글턴 패턴
	private static ProductRepository instance = new ProductRepository();
	
	public static ProductRepository getInstance() {
		
		return instance;
	}
	
	
	
	
	//원래는 DB에서 가져온다
	public ProductRepository() {
		Product phone = new Product("P1234", "iphone 6s", 800000);
		phone.setDescription("4.7-inch, 1334X750 Retina HD display, 8-megapixel iSight Camera");
		phone.setCategory("smartPhone");
		phone.setMenufacturer("Apple");
		phone.setUnitsInStock(1000);
		phone.setCategory("new");
		
		Product notebook = new Product ("P1235", "LG PC 그램", 1500000);
		notebook.setDescription("13.3-inch, IPS LED display, 5rd Generation Intel core processors");
		notebook.setCategory("Notebook");
		notebook.setMenufacturer("LG");
		notebook.setUnitsInStock(1000);
		notebook.setCategory("Refurbished");
		
		Product tablet = new Product ("P1236", "Galaxy Tab S", 900000);
		tablet.setDescription("212.8*125.6*6.6mm, Super AMOLED display, Octa-Core processor");
		tablet.setCategory("Tablet");
		tablet.setMenufacturer("Samsung");
		tablet.setUnitsInStock(1000);
		tablet.setCategory("Old");
		
		products.add(phone);
		products.add(notebook);
		products.add(tablet);
	}
	//모든 상품정보를 가져온다
	public List<Product> getAllProducts() {
		return products;
	}
	
	// ID로상품찾기
	public Product getProductById(String productId) {
		// 자바 8 이후 사용가능한 문법, stream. 원래코드는 p.173 참고
		return products
				.stream() // 상품 3개가 흘러감
				.filter((product)-> product.getProductId().equals(productId))// 필요한것 거를 규칙 설정 (true인것만 찾기)
				.findFirst() // 거른것 중 첫번째 것
				.get(); // 얻어오기
	}
	//상품 추가
	public void addProduct(Product product) {
		products.add(product);
	}
}
