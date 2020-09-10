package com.valunskii.grimoire.controller;

import com.valunskii.grimoire.service.AuthorService;
import com.valunskii.grimoire.service.BookService;
import com.valunskii.grimoire.service.TagService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/")
public class HomeController {

    AuthorService authorService;
    BookService bookService;
    TagService tagServise;

    @Autowired
    public HomeController(AuthorService authorService, BookService bookService, TagService tagServise) {
        this.authorService = authorService;
        this.bookService = bookService;
        this.tagServise = tagServise;
    }

    @GetMapping
    public String getHomePage(Model model) {
        model.addAttribute("amountTag", tagServise.count());
        model.addAttribute("amountBook", bookService.count());
        model.addAttribute("amountAuthor", authorService.count());
        return "home-page";
    }
}
