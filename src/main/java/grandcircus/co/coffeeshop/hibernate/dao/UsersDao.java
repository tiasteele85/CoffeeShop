package grandcircus.co.coffeeshop.hibernate.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;
import org.springframework.stereotype.Repository;

import grandcircus.co.coffeeshop.hibernate.entity.Users;


@Repository
@Transactional
public class UsersDao {

	@PersistenceContext
	EntityManager em;
	
	public List<Users> findAll(){
		return em.createQuery("FROM Users", Users.class).getResultList();
	}
	
	public Users findByID(Long id) {
		return em.find(Users.class, id);
	}
	
	public void create(Users user) {
		em.persist(user);
	}
	
	public void delete(Long id) {
		Users user = em.getReference(Users.class, id);
		em.remove(user);
	}
}
