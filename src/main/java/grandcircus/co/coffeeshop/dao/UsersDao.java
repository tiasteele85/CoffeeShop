package grandcircus.co.coffeeshop.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import grandcircus.co.coffeeshop.entity.Users;



@Repository
public class UsersDao {

	@Autowired
	private JdbcTemplate jdbc;
	
	
	
	public List<Users> findAll(){
		
		String sql = "SELECT * FROM Users";
		return jdbc.query(sql, new BeanPropertyRowMapper<>(Users.class));
	}
	
	public Users findById(Long id) {
		
		String sql = "SELECT * FROM Users WHERE id = ?";
		return jdbc.queryForObject(sql, new BeanPropertyRowMapper<>(Users.class), id);
	}
	
	public void update(Users users) {
		
		String sql = "UPDATE Users SET username=?, password=?, firstname=?, lastname=? WHERE id = ?";
		jdbc.update(sql, users.getUsername(), users.getPassword(), users.getFirstname(), users.getLastname(), users.getId());
		
	}
	
	public void delete(Long id) {
		String sql = "DELETE FROM Users WHERE id = ?";
		jdbc.update(sql, id);
	}
	
	public void create(Users users) {
		String sql = "INSERT INTO Users(username, password, firstname, lastname) VALUES(?,?,?,?)";
		jdbc.update(sql, users.getUsername(), users.getPassword(), users.getFirstname(), users.getLastname());
	}
	
	
	
}
