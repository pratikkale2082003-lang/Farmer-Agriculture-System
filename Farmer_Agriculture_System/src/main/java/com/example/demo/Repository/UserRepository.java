package com.example.demo.Repository;

import com.example.demo.Model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.Optional;

public interface UserRepository extends JpaRepository<User, Long> {

    // Use Optional and first match to avoid NonUniqueResultException
    Optional<User> findFirstByNameAndPassword(String name, String password);
}
