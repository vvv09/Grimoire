package com.valunskii.grimoire.service;

import com.valunskii.grimoire.domain.Author;
import com.valunskii.grimoire.domain.Book;
import com.valunskii.grimoire.repo.BookRepo;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BookServiceImpl implements BookService {

    BookRepo bookRepo;

    @Autowired
    public BookServiceImpl(BookRepo bookRepo) {
        this.bookRepo = bookRepo;
    }

    @Override
    public Book create(Book book) {
        return bookRepo.save(book);
    }

    @Override
    public Long count() {
        return bookRepo.count();
    }

    @Override
    public Book update(Book book, Long id) {
        Book bookFromDb = getOneById(id);
        BeanUtils.copyProperties(book, bookFromDb, "id");
        return bookRepo.save(bookFromDb);
    }

    @Override
    public List<Book> getAll() {
        return bookRepo.findAll();
    }

    @Override
    public Book getOneById(Long id) {
        return bookRepo.findById(id).orElse(new Book());
    }

    @Override
    public List<Book> getByTag(String tag) {
        return bookRepo.findAll();
    }

    @Override
    public List<Book> getByAuthor(Author author) {
        return bookRepo.findAllByAuthor(author);
    }

    @Override
    public void delete(Book book) {
        bookRepo.delete(book);
    }
}
