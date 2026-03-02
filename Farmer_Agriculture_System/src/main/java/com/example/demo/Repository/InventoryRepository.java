package com.example.demo.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.example.demo.Model.Inventory;

public interface InventoryRepository extends JpaRepository<Inventory, Long> {
}
