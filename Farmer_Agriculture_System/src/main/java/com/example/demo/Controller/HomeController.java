package com.example.demo.Controller;

import com.example.demo.Model.User;
import com.example.demo.Service.UserService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class HomeController {

    @Autowired
    private UserService userService;

    
    
    @GetMapping("/")
    public String home() {
        return "home";
    }
    
    @GetMapping("/login")
    public String loginPage() {
        return "login";
    }
    @PostMapping("/login")
    public String loginUser(
            @RequestParam String name,
            @RequestParam String password,
            HttpSession session,
            Model model) {

        User user = userService.login(name, password);

        if (user != null) {
            session.setAttribute("loggedInUser", user); // ✅ VERY IMPORTANT
            
            return user.getRole() == User.Role.admin
                    ? "redirect:/admin-dashboard"
                    : "redirect:/farmer-dashboard";
        } else {
            model.addAttribute("error", "Invalid username or password");
            return "login";
        }
    }





    @GetMapping("/register")
    public String registerPage(Model model) {
        model.addAttribute("user", new User());
        return "register";
    }

    @PostMapping("/register")
    public String registerUser(@ModelAttribute User user) {
        userService.register(user);
        return "redirect:/login";
    }

    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/login";
    }
}
