
package onlineShop.model;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name = "product")
public class Product implements Serializable {

    private static final long serialVersionUID = 5186013952828648626L;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;

    @Column(name = "category")
    private String productCategory;

    @Column(name = "description", columnDefinition = "LONGTEXT")
    private String productDescription;

    @Column(name = "manufacturer")
    private String productManufacturer;

    @Column(name = "name")
    private String productName;

    @Column(name = "price")
    private double productPrice;

    @Column(name = "number")
    private int unitStock;

    @Column(name = "unit")
    private String unit;

    @Column(name = "pages")
    private int pages;

    @Transient
    private MultipartFile productImage;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getProductCategory() {
        return productCategory;
    }

    public void setProductCategory(String productCategory) {
        this.productCategory = productCategory;
    }

    public String getProductDescription() {
        return productDescription;
    }

    public void setProductDescription(String productDescription) {
        this.productDescription = productDescription;
    }

    public String getProductManufacturer() {
        return productManufacturer;
    }

    public void setProductManufacturer(String productManufacturer) {
        this.productManufacturer = productManufacturer;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public double getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(double productPrice) {
        this.productPrice = productPrice;
    }

    public int getUnitStock() {
        return unitStock;
    }

    public void setUnitStock(int unitStock) {
        this.unitStock = unitStock;
    }

    public MultipartFile getProductImage() {
        return productImage;
    }

    public void setProductImage(MultipartFile productImage) {
        this.productImage = productImage;
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }

    public Map<String, String> getDescription() {
        Map<String, String> result = new HashMap<>();
        for (String des : productDescription.split("\n")) {
            String[] item = des.split(":");
            item[1] = item[1].startsWith(" ") ? item[1].substring(1) : item[1];
            result.put(item[0], item[1]);
        }
        return result;
    }

    public int getPages() {
        return pages;
    }

    public void setPages(int pages) {
        this.pages = pages;
    }

}
