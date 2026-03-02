package com.example.demo.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.example.demo.Model.Sales;

public interface SalesRepository extends JpaRepository<Sales, Long> {
}
