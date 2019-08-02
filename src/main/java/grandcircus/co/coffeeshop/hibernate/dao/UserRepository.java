package grandcircus.co.coffeeshop.hibernate.dao;
import org.springframework.data.jpa.repository.JpaRepository;

import grandcircus.co.coffeeshop.hibernate.entity.Users;



public interface UserRepository extends JpaRepository<Users, Long> {

	
	//Add method to check for a specific email
	Users findByUsernameAndPassword(String username, String password);
}

