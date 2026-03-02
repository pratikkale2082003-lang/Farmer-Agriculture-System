package com.example.demo.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.RequestMapping;

@Controller
//@RequestMapping("/farmer")
public class FarmerController {

    @GetMapping("/farmer-dashboard")
    public String farmerDashboard() {
        return "farmer-dashboard";
    }
}
