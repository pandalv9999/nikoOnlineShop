package onlineShop.controller;

import onlineShop.model.Product;
import onlineShop.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class HomePageController {

    @Autowired
    private ProductService productService;

    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public ModelAndView sayIndex() {
        List<Product> products = productService.getAllProducts();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("index");
        modelAndView.addObject("products", products);
        modelAndView.addObject("imgNums", 9);
        return modelAndView;
    }

    @RequestMapping(value = "/aboutus", method = RequestMethod.GET)
    public String sayAbout() {
        return "aboutUs";
    }
}
