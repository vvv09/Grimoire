package com.valunskii.grimoire.controller;

import com.valunskii.grimoire.domain.Book;
import com.valunskii.grimoire.service.AuthorService;
import com.valunskii.grimoire.service.BookService;
import com.valunskii.grimoire.service.TagService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping(value = "/main")
public class MainController {
    private BookService bookService;
    private TagService tagService;
    private AuthorService authorService;


    @Autowired
    public MainController(BookService bookService, TagService tagService, AuthorService authorService) {
        this.bookService = bookService;
        this.tagService = tagService;
        this.authorService = authorService;
    }

    @GetMapping
    public String searhchByParam(Model model) {
        List<Book> books = bookService.getAll();
        model.addAttribute("books", books);
        model.addAttribute("amount", bookService.count());
        model.addAttribute("tags", tagService.getAll());
        model.addAttribute("authors", authorService.getAll());
        model.addAttribute("history", "main");
        return "main-page";
    }

    @GetMapping(value = "/manage")
    public String retrieveAll(Model model) {
        List<Book> books = bookService.getAll();
        model.addAttribute("books", books);
        model.addAttribute("amountBooks", bookService.count());
        model.addAttribute("tags", tagService.getAll());
        model.addAttribute("amountTags", tagService.count());
        model.addAttribute("authors", authorService.getAll());
        model.addAttribute("amountAuthors", authorService.count());
        model.addAttribute("history", "manage");
        return "manage-page";
    }
}
