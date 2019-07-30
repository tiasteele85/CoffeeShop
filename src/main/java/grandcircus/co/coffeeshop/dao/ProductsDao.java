package grandcircus.co.coffeeshop.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import grandcircus.co.coffeeshop.entity.Products;

@Repository
public class ProductsDao {
	
	@Autowired
	private JdbcTemplate jdbc;
	
	public List<Products> findAll(){
		
		String sql = "SELECT * FROM Products";
		return jdbc.query(sql, new BeanPropertyRowMapper<>(Products.class));
	}
	
	public Products findById(Long id) {
		
		String sql = "SELECT * FROM Products WHERE id = ?";
		return jdbc.queryForObject(sql, new BeanPropertyRowMapper<>(Products.class), id);
	}
	
	public void update(Products products) {
		
		String sql = "UPDATE Products SET name=?, description=?, price=? WHERE id = ?";
		jdbc.update(sql, products.getName(), products.getDescription(), products.getPrice(), products.getId());
		
	}
	
	public void delete(Long id) {
		String sql = "DELETE FROM Products WHERE id = ?";
		jdbc.update(sql, id);
	}
	
	public void create(Products products) {
		String sql = "INSERT INTO Products(name, description,price) VALUES(?,?,?)";
		jdbc.update(sql, products.getName(), products.getDescription(), products.getPrice(), products.getId());
	}
	
	
}
