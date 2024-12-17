package com.avn.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.avn.entity.Product;

public interface ProductRepository extends JpaRepository<Product, Long>{

}
