package com.example.demo.Controller;

import com.example.demo.Model.Inventory;
import com.example.demo.Service.InventoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/inventory")
public class InventoryController {

    @Autowired
    private InventoryService inventoryService;

    @GetMapping
    public String inventoryPage(Model model) {
        model.addAttribute("inventory", new Inventory());
        model.addAttribute("inventoryList", inventoryService.getAllInventory());
        return "inventory";
    }

    @PostMapping("/save")
    public String saveInventory(@ModelAttribute Inventory inventory) {
        inventoryService.saveInventory(inventory);
        return "redirect:/inventory";
    }
}
