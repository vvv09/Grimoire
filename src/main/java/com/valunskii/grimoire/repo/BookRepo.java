package com.valunskii.grimoire.repo;

import com.valunskii.grimoire.domain.Author;
import com.valunskii.grimoire.domain.Book;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface BookRepo extends JpaRepository<Book, Long> {

    List<Book> findAllByAuthor(Author author);
}
