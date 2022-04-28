package com.guerratesters.compras.dao;

import com.guerratesters.compras.entity.Product;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductRepository extends JpaRepository<Product, Long> {

}
