package com.example.demo.Service;

import com.example.demo.Model.User;
import com.example.demo.Repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class UserService {

    @Autowired
    private UserRepository userRepository;

    public void register(User user) {
        userRepository.save(user);
    }

    public User login(String name, String password) {
        Optional<User> userOpt = userRepository.findFirstByNameAndPassword(name, password);
        return userOpt.orElse(null); // return null if not found
    }
}
