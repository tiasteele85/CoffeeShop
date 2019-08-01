package grandcircus.co.coffeeshop.hibernate.entity;

import java.math.BigDecimal;
import java.math.RoundingMode;


import javax.persistence.*;


@Entity
@Table(name="products")
public class Products {
	
	@Id@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@Column(length = 50)
	private String name;
	@Column(length = 50)
	private String description;	
	double price;
	
	public Products() {}
	
	public Products(Long id, String name, String description, double price) {
		super();
		this.id = id;
		this.name = name;
		this.description = description;
		this.price = price;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public double getPrice() {
		
		BigDecimal bd = new BigDecimal(price).setScale(2, RoundingMode.HALF_UP);         
		return bd.doubleValue();
		
	}

	public void setPrice(double price) {
		this.price = price;
	}

	@Override
	public String toString() {
		return "Products [id=" + id + ", name=" + name + ", description=" + description + ", price=" + price + "]";
	}
	
}
