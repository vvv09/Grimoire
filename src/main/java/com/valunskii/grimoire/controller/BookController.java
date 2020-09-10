package com.valunskii.grimoire.controller;

import com.valunskii.grimoire.domain.Book;
import com.valunskii.grimoire.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping(value = "/books")
public class BookController {

    private BookService bookService;

    @Autowired
    public void setClassroomRepo(BookService bookService) {
        this.bookService = bookService;
    }

    @GetMapping
    public String retrieveAll(Model model) {
        List<Book> books = bookService.getAll();
        model.addAttribute("books", books);
        model.addAttribute("amount", bookService.count());
        model.addAttribute("history", "items");
        return "book/book-list";
    }

    @GetMapping("/new")
    public String retrieveNewFormForEdit(Model model) {
        model.addAttribute("book", new Book());
        model.addAttribute("update", false);
        model.addAttribute("history", "items");
        return "book/book-form";
    }

    @PostMapping
    public String createBook(@ModelAttribute("book") Book book) {
        bookService.create(book);
        return "redirect:/books";
    }

    @PostMapping("{id}")
    public String updateBook(@ModelAttribute("book") Book book, @PathVariable("id") Long id, Model model) {
        try {
            bookService.update(book, id);
            model.addAttribute("history", "items");
            return "redirect:/books";
        } catch (Exception e) {
//            logger.error(errorMessage);
            model.addAttribute("errorMessage", e.getMessage());
            model.addAttribute("update", true);
            return "book/book-form";
        }
    }

    @GetMapping("/{book}")
    public String retrieveOneById(@PathVariable Book book, Model model) {
        model.addAttribute("book", book);
        model.addAttribute("update", true);
        model.addAttribute("history", "items");
        return "book/book-form";
    }

    @GetMapping("/delete/{book}")
    public String deleteBook(@PathVariable Book book, Model model) {
        bookService.delete(book);
        model.addAttribute("history", "items");
        return "redirect:/books";
    }
}
