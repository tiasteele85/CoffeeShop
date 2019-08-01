package grandcircus.co.coffeeshop;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;
import grandcircus.co.coffeeshop.hibernate.dao.ProductsDao;
import grandcircus.co.coffeeshop.hibernate.dao.UsersDao;
import grandcircus.co.coffeeshop.hibernate.entity.Products;
import grandcircus.co.coffeeshop.hibernate.entity.Users;


@Controller
public class CoffeeShopController {
	
	@Autowired
	private ProductsDao pDao;
	@Autowired
	private UsersDao uDao;
	
	@RequestMapping("/")
	public ModelAndView index() {
		return new ModelAndView("redirect:/products");
	}

	@RequestMapping("/products")
	public ModelAndView list() {
		List<Products> leListOfRooms = pDao.findAll();
		return new ModelAndView("list", "products", leListOfRooms);
	}
	
	@PostMapping("/products")
	public ModelAndView backHome() {
		
		List<Products> leListOfRooms = pDao.findAll();
		ModelAndView mv = new ModelAndView("list", "products", leListOfRooms);
			

		return mv;
	}

	
	@RequestMapping("/user-form")
	public ModelAndView showUserForm() {		
		
		return new ModelAndView("/user-form");
	}
	
	@PostMapping("/thank-you")
	public ModelAndView showThankYou(Users user, HttpSession session) {					
			
			uDao.create(user);
			session.setAttribute("preference", user);
			ModelAndView mv = new ModelAndView("/thank-you");
			mv.addObject("name", user.getFirstname());			
		
			return mv;
	}
	
	@RequestMapping("/admin")
	public ModelAndView showAdmin() {
		
		List<Products> leListOfRooms = pDao.findAll();
		return new ModelAndView("admin", "products", leListOfRooms);
	}
	
	@RequestMapping("/add")
	public ModelAndView showAdd() {
		return new ModelAndView("/add");
	}
	
	@PostMapping("/add")
	public ModelAndView completeAdd(Products product) {
		
		pDao.create(product);
		ModelAndView mv = new ModelAndView("redirect:admin");
		return mv;
		
	}
	
	@RequestMapping("/delete")
	public ModelAndView delete(@RequestParam("id") Long id) {
		pDao.delete(id);
		return new ModelAndView("redirect:admin");	
	}
	
	@RequestMapping("/edit-product")
	public ModelAndView showEditPage(@RequestParam("id") Long id) {
		
		ModelAndView mv = new ModelAndView("/edit-product");
		mv.addObject("product", pDao.findById(id));
		
		return mv;
		
	}

	@PostMapping("/edit-product")
	public ModelAndView editProduct(Products product) {
		pDao.update(product);
		return new ModelAndView("redirect:admin");
		
	}
	
}

