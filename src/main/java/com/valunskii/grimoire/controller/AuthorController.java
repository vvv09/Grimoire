package com.valunskii.grimoire.controller;

import com.valunskii.grimoire.domain.Author;
import com.valunskii.grimoire.service.AuthorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping(value = "/authors")
public class AuthorController {

    private AuthorService authorService;

    @Autowired
    public void setClassroomRepo(AuthorService authorService) {
        this.authorService = authorService;
    }

    @GetMapping
    public String retrieveAll(Model model) {
        List<Author> authors = authorService.getAll();
        model.addAttribute("authors", authors);
        model.addAttribute("amount", authorService.count());
        model.addAttribute("history", "items");
        return "author/author-list";
    }

    @GetMapping("/new")
    public String retrieveNewFormForEdit(Model model) {
        model.addAttribute("author", new Author());
        model.addAttribute("update", false);
        model.addAttribute("history", "items");
        return "author/author-form";
    }

    @PostMapping
    public String createAuthor(@ModelAttribute("author") Author author) {
        authorService.create(author);
        return "redirect:/authors";
    }

    @PostMapping("{author-id}")
    public String updateAuthor(@ModelAttribute("author") Author author, @PathVariable("author-id") Long id, Model model) {
        try {
            authorService.update(author, id);
            model.addAttribute("history", "items");
            return "redirect:/authors";
        } catch (Exception e) {
//            logger.error(errorMessage);
            model.addAttribute("errorMessage", e.getMessage());
            model.addAttribute("update", true);
            return "author/author-form";
        }
    }

    @GetMapping("/{author}")
    public String retrieveOneById(@PathVariable Author author, Model model) {
        model.addAttribute("author", author);
        model.addAttribute("update", true);
        model.addAttribute("history", "items");
        return "author/author-form";
    }

    @GetMapping("/delete/{author}")
    public String deleteAuthor(@PathVariable Author author, Model model) {
        authorService.delete(author);
        model.addAttribute("history", "items");
        return "redirect:/authors";
    }
}
