package io.khasang.stockmanager.controller;

import io.khasang.stockmanager.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

@Controller
public class ProductController {

    @Autowired
    ProductService productService;

    @RequestMapping("/products")
    public String listContacts(Map<String, Object> map) {
        map.put("productList", productService.listProduct());
        return "product";
    }

    @RequestMapping("/delete/{productId}")
    public String deleteProduct(@PathVariable("productId") Integer productId) {
        productService.removeProduct(productId);
        return "redirect:/products";
    }
}
