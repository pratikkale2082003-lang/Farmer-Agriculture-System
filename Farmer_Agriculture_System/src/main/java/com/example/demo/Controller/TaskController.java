package com.example.demo.Controller;

import com.example.demo.Model.Task;
import com.example.demo.Service.TaskService;
import com.example.demo.Service.CropService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/task")
public class TaskController {

    @Autowired
    private TaskService taskService;

    @Autowired
    private CropService cropService;

    @GetMapping
    public String taskPage(Model model) {
        model.addAttribute("task", new Task());
        model.addAttribute("taskList", taskService.getAllTasks());
        model.addAttribute("cropList", cropService.getAllCrops());
        return "task"; // task.jsp
    }

    @PostMapping("/save")
    public String saveTask(@ModelAttribute Task task) {
        taskService.saveTask(task);
        return "redirect:/task";
    }
}
