package grandcircus.co.coffeeshop.hibernate.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;
import org.springframework.stereotype.Repository;
import grandcircus.co.coffeeshop.hibernate.entity.Products;

@Repository
@Transactional
public class ProductsDao {
	
	@PersistenceContext
	EntityManager em;
	
	public List<Products> findAll(){
		
		return em.createQuery("FROM Products", Products.class).getResultList();
		
	}
	
	public Products findById(Long id) {
		
		return em.find(Products.class, id);
	}
	
	public void create(Products product) {
		
		em.persist(product);
	}
	
	public void delete(Long id) {
		
		Products product = em.getReference(Products.class, id);
		em.remove(product);
	}
	
	public void update(Products product)
	{
		em.merge(product);
	}
}
