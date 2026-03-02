package com.example.demo.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.example.demo.Model.Crop;

public interface CropRepository extends JpaRepository<Crop, Long> {
}
