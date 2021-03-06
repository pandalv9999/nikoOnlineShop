package onlineShop.dao;

import onlineShop.model.Product;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import java.util.ArrayList;
import java.util.List;

@Repository
public class ProductDao {

    @Autowired
    private SessionFactory sessionFactory;

    public List<Product> getAllProducts() {
        List<Product> result = new ArrayList<>();
        try (Session session = sessionFactory.openSession()) {
            session.beginTransaction();
            CriteriaBuilder criteriaBuilder = session.getCriteriaBuilder();
            CriteriaQuery<Product> criteriaQuery = criteriaBuilder.createQuery(Product.class);
            Root<Product> root = criteriaQuery.from(Product.class);
            criteriaQuery.select(root);
            result = session.createQuery(criteriaQuery).getResultList();
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public Product getProductById(int productId) {
        try (Session session = sessionFactory.openSession()) {
            session.beginTransaction();
            Product product = (Product) session.get(Product.class, productId);
            session.getTransaction().commit();
            return product;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
