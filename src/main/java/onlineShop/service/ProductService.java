package onlineShop.service;

import onlineShop.dao.ProductDao;
import onlineShop.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductService {

    @Autowired
    private ProductDao productDao;

    public List<Product> getAllProducts() {
        return productDao.getAllProducts();
    }

    public Product getProductById(int productId) {
        return productDao.getProductById(productId);
    }
}
