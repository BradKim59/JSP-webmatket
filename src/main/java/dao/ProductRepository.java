package dao;

import java.util.ArrayList;
import java.util.List;

import dto.Product;

//data access object

// product에 대한 기능을 정의
public class ProductRepository {
	// ArrayList는 클래스
	// List는 인터페이스, 생성시 어떠한 리스트 종류도 받아들일 수 있다.
	private List<Product> products = new ArrayList<>();
	//원래는 DB에서 가져온다
	public ProductRepository() {
		Product phone = new Product("P1234", "iphone 6s", 800000);
		phone.setDescription("4.7-inch, 1334X750 Retina HD display, 어쩌구");
		phone.setCategory("smartPhone");
		phone.setMenufacturer("Apple");
		phone.getUnitsInStock(1000);
		phone.setCategory("new");
		Product notebook = new Product ("P1235", "LG PC 그램", 1500000);
		notebook.setDescription("4.7-inch, 1334X750 Retina HD display, 어쩌구");
		notebook.setCategory("smartPhone");
		notebook.setMenufacturer("Apple");
		notebook.getUnitsInStock(1000);
		notebook.setCategory("new");
		Product tablet = new Product ("P1236", "Galaxy", 900000);
		tablet.setDescription("4.7-inch, 1334X750 Retina HD display, 어쩌구");
		tablet.setCategory("smartPhone");
		tablet.setMenufacturer("Apple");
		tablet.getUnitsInStock(1000);
		tablet.setCategory("new");
		
		products.add(phone);
		products.add(notebook);
		products.add(tablet);
	}
	//모든 상품정보를 가져온다
	public List<Product> getAllProducts() {
		return products;
	}
	
}
