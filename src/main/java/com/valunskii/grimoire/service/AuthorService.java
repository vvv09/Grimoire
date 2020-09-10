package com.valunskii.grimoire.service;

import com.valunskii.grimoire.domain.Author;

import java.util.List;

public interface AuthorService {
    Author create(Author author);

    Long count();

    List<Author> getAll();

    Author getOneById(Long id);

    int countBooks(Author author);

    Author update(Author author, Long id);

    void delete(Author author);
}
