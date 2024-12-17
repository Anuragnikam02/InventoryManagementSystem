package com.avn.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.avn.entity.Product;
import com.avn.repository.ProductRepository;

@Service
public class ProductService {
	@Autowired
	ProductRepository repository;
	
	// Fetch all products from repository
    public List<Product> getAllProducts() {
        return repository.findAll();
    }

    // Save a new product
    public void saveProduct(Product product) {
    	repository.save(product);
    }
	
	public Product getProductById(Long id)
	{
		return repository.findById(id).orElse(null);
	}
	
	public void updateProduct(Product product)
	{
		repository.save(product);
	}
	
	public void deleteProduct(Long id)
	{
		repository.deleteById(id);
	}
	
	
}
