package com.example.demo.Controller;

import com.example.demo.Model.Farm;
import com.example.demo.Model.User;
import com.example.demo.Service.FarmService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/farm")
public class FarmController {

    @Autowired
    private FarmService farmService;

    @GetMapping
    public String farmPage(Model model) {
        model.addAttribute("farm", new Farm());
        model.addAttribute("farmList", farmService.getAllFarms());
        return "farm";
    }

    @PostMapping("/save")
    public String saveFarm(@ModelAttribute Farm farm, HttpSession session) {
        User farmer = (User) session.getAttribute("loggedUser");
        farm.setFarmer(farmer);
        farmService.saveFarm(farm);
        return "redirect:/farm";
    }
}
