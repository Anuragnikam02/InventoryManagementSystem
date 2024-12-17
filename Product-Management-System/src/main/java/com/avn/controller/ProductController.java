package com.avn.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.avn.entity.Product;
import com.avn.service.ProductService;

@Controller
public class ProductController {
	@Autowired
	private ProductService service;

	@GetMapping("/dashboard")
	public String home() 
	{
		return "homepage";  // This refers to the homepage.jsp file
	}

	@GetMapping("/products")
	public String viewProducts(Model model)
	{
		List<Product> products = service.getAllProducts();
		model.addAttribute("products", products);
		return "view-products";	 // JSP for viewing all products
	}

	@GetMapping("/add-product")
	public String showAddProductForm(Model model) {
		model.addAttribute("product", new Product());  // Initialize an empty Product object
		return "add-product";  // This returns the add-product.jsp form
	}

	@PostMapping("/save-product")
	public String saveProduct(@ModelAttribute Product p) 
	{
		service.saveProduct(p);  // Redirect to view all products
		return "redirect:/products";
	}
	
	// Load the update product form with existing product details
    @GetMapping("/updateProductForm")
    public String updateProductForm(@RequestParam("id") Long id, Model model) {
        // Fetch the existing product details
        Product existingProduct = service.getProductById(id);
        if (existingProduct != null) 
        {
            model.addAttribute("product", existingProduct);
            return "update-product"; // Refers to update-product.jsp
        } 
        else 
        {
            model.addAttribute("error", "Product not found");
            return "redirect:/products"; // Redirect if product is not found
        }
    }

    // Handle the update product form submission
    @PostMapping("/update-Product")
    public String updateProduct(@ModelAttribute Product updatedProduct) {
        service.updateProduct(updatedProduct);
        return "redirect:/products"; // Redirect back to the product list
    }
    
    @GetMapping("/search-product")
    public String searchProduct(@RequestParam("id") Long id, Model model)
    {
    	try 
    	{
	    	Product product = service.getProductById(id);
	    	if(product != null)
	    	{
	    		 model.addAttribute("product", product);
	    	}
	    	else
	    	{
	    		model.addAttribute("error", "Oops! Product not found in our Inventory.");
	    	}
    	}
    	catch(Exception e)
    	{
    		 model.addAttribute("error", "An error occurred while searching for the product.");
    	}
		return "search-product";
    }
    
	@GetMapping("/delete-product")
	public String deleteProduct(Long id) {
		service.deleteProduct(id);
		return "redirect:/products";  // Redirect to view all products after deletion
	}
}
