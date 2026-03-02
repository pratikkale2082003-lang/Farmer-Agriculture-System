package com.example.demo.Controller;

import com.example.demo.Model.Field;
import com.example.demo.Service.FieldService;
import com.example.demo.Service.FarmService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/field")
public class FieldController {

    @Autowired
    private FieldService fieldService;

    @Autowired
    private FarmService farmService;

    @GetMapping
    public String fieldPage(Model model) {
        model.addAttribute("field", new Field());
        model.addAttribute("fieldList", fieldService.getAllFields());
        model.addAttribute("farmList", farmService.getAllFarms());
        return "field";
    }

    @PostMapping("/save")
    public String saveField(@ModelAttribute Field field) {
        fieldService.saveField(field);
        return "redirect:/field";
    }
}
