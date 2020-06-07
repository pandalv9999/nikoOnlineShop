package onlineShop.controller;

import onlineShop.model.Product;
import onlineShop.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.Arrays;
import java.util.List;
import java.util.Map;

@Controller
public class ProductController {

    @Autowired
    private ProductService productService;

    @RequestMapping(value = "/getAllProducts", method = RequestMethod.GET)
    public ModelAndView getAllProducts() {
        List<Product> products = productService.getAllProducts();
        return new ModelAndView("productList", "products", products);
    }

    @RequestMapping(value = "/getProductById/{productId}", method = RequestMethod.GET)
    public ModelAndView getProductById(@PathVariable(value = "productId") int productId) {
        Product product = productService.getProductById(productId);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("productPage");
        modelAndView.addObject("product", product);
        Map<String, String> descriptions = product.getDescription();
        if (descriptions.containsKey("Features")) {
            List<String> featureList = Arrays.asList(descriptions.get("Features").split(";"));
            modelAndView.addObject("features", featureList);
            descriptions.remove("Features");
        }
        if (descriptions.containsKey("Description")) {
            modelAndView.addObject("summary", descriptions.get("Description"));
            descriptions.remove("Description");
        }
        modelAndView.addObject("descriptions", descriptions);
        return modelAndView;
    }
}
