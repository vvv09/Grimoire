package com.valunskii.grimoire.service;

import com.valunskii.grimoire.domain.Author;
import com.valunskii.grimoire.domain.Book;

import java.util.List;

public interface BookService {
    Book create(Book book);

    Long count();

    List<Book> getAll();

    Book getOneById(Long id);

    List<Book> getByTag(String tag);

    List<Book> getByAuthor(Author author);

    Book update(Book book, Long id);

    void delete(Book book);
}
