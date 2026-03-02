package com.example.demo.Controller;

import com.example.demo.Model.Crop;
import com.example.demo.Service.CropService;
import com.example.demo.Service.FieldService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/crop")
public class CropController {

    @Autowired
    private CropService cropService;

    @Autowired
    private FieldService fieldService;

    @GetMapping
    public String cropPage(Model model) {
        model.addAttribute("crop", new Crop());
        model.addAttribute("cropList", cropService.getAllCrops());
        model.addAttribute("fieldList", fieldService.getAllFields());
        return "crop";
    }

    @PostMapping("/save")
    public String saveCrop(@ModelAttribute Crop crop) {
        cropService.saveCrop(crop);
        return "redirect:/crop";
    }
}
