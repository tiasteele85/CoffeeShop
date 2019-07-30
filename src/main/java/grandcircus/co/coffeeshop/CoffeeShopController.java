package grandcircus.co.coffeeshop;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import grandcircus.co.coffeeshop.dao.ProductsDao;
import grandcircus.co.coffeeshop.dao.UsersDao;
import grandcircus.co.coffeeshop.entity.Products;
import grandcircus.co.coffeeshop.entity.Users;

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
	
	@RequestMapping("/user-form")
	public ModelAndView showUserForm() {
		
		
		return new ModelAndView("/user-form");
	}
	
	@PostMapping("/thank-you")
	public ModelAndView showThankYou(Users user) {					
			
			uDao.create(user);
			ModelAndView mv = new ModelAndView("/thank-you");
			mv.addObject("name", user.getFirstname());			
		
			return mv;
	}
	
	
	
	
	
	
	
	

	
}

