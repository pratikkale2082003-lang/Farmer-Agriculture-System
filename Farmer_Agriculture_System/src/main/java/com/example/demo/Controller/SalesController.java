package com.example.demo.Controller;

import com.example.demo.Model.Sales;
import com.example.demo.Service.InventoryService;
import com.example.demo.Service.SalesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/sales")
public class SalesController {

    @Autowired
    private SalesService salesService;

    @Autowired
    private InventoryService inventoryService;

    @GetMapping
    public String salesPage(Model model) {
        model.addAttribute("sales", new Sales());
        model.addAttribute("salesList", salesService.getAllSales());
        model.addAttribute("inventoryList", inventoryService.getAllInventory());
        return "sales";
    }

    @PostMapping("/save")
    public String saveSales(@ModelAttribute Sales sales) {
        salesService.saveSales(sales);
        return "redirect:/sales";
    }
}
