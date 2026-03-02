package com.example.demo.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.example.demo.Model.Farm;

public interface FarmRepository extends JpaRepository<Farm, Long> {
}
