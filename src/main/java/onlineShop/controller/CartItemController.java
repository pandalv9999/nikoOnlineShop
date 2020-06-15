
package onlineShop.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import onlineShop.model.Cart;
import onlineShop.model.CartItem;
import onlineShop.model.Customer;
import onlineShop.model.Product;
import onlineShop.service.CartItemService;
import onlineShop.service.CartService;
import onlineShop.service.CustomerService;
import onlineShop.service.ProductService;

@Controller
public class CartItemController {
    @Autowired
    private CartService cartService;

    @Autowired
    private CartItemService cartItemService;

    @Autowired
    private CustomerService customerService;

    @Autowired
    private ProductService productService;

    @RequestMapping(value = "/cart/add/{productId}/{quantity}", method = RequestMethod.GET)
    @ResponseBody
    public String addCartItem(@PathVariable(value = "productId") int productId,
                              @PathVariable(value = "quantity") int quantity) {
        return String.format("%d, %d", productId, quantity);
//        Authentication loggedInUser = SecurityContextHolder.getContext().getAuthentication();
//        String username = loggedInUser.getName();
//        Customer customer = customerService.getCustomerByUserName(username);
//
//        Cart cart = customer.getCart();
//        List<CartItem> cartItems = cart.getCartItems();
//        Product product = productService.getProductById(productId);
//
//        for (int i = 0; i < cartItems.size(); i++) {
//            CartItem cartItem = cartItems.get(i);
//            if (product.getId() == (cartItem.getProduct().getId())) {
//                cartItem.setQuantity(cartItem.getQuantity() + 1);
//                cartItem.setPrice(cartItem.getQuantity() * cartItem.getProduct().getProductPrice());
//                cartItemService.addCartItem(cartItem);
//                return "SUCCESS";
//            }
//        }
//
//        CartItem cartItem = new CartItem();
//        cartItem.setQuantity(1);
//        cartItem.setProduct(product);
//        cartItem.setPrice(product.getProductPrice());
//        cartItem.setCart(cart);
//        cartItemService.addCartItem(cartItem);
//        return "SUCCESS";
    }

    @RequestMapping(value = "/cart/removeCartItem/{cartItemId}", method = RequestMethod.DELETE)
    @ResponseStatus(value = HttpStatus.NO_CONTENT)
    public void removeCartItem(@PathVariable(value = "cartItemId") int cartItemId) {
        cartItemService.removeCartItem(cartItemId);
    }

    @RequestMapping(value = "/cart/removeAllItems/{cartId}", method = RequestMethod.DELETE)
    @ResponseStatus(value = HttpStatus.NO_CONTENT)
    public void removeAllCartItems(@PathVariable(value = "cartId") int cartId) {
        Cart cart = cartService.getCartById(cartId);
        cartItemService.removeAllCartItems(cart);
    }

}