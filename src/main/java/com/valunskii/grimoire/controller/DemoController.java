package com.valunskii.grimoire.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/demo")
public class DemoController {

    @GetMapping(value = "/home")
    public String getHomePage(Model model) {
        model.addAttribute("history", "demo");
        return "demo/demo-home";
    }

    @GetMapping(value = "/post")
    public String getPostPage(Model model) {
        model.addAttribute("history", "demo");
        return "demo/demo-post";
    }

    @GetMapping(value = "/category")
    public String getCategoryPage(Model model) {
        model.addAttribute("history", "demo");
        return "demo/demo-category";
    }
}
