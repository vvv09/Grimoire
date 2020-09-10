package com.valunskii.grimoire.service;

import com.valunskii.grimoire.domain.Author;
import com.valunskii.grimoire.repo.AuthorRepo;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AuthorServiceImpl implements AuthorService {

    AuthorRepo authorRepo;
    BookService bookService;

    @Autowired
    public AuthorServiceImpl(AuthorRepo authorRepo, BookService bookService) {
        this.authorRepo = authorRepo;
        this.bookService = bookService;
    }

    @Override
    public Author create(Author author) {
        return authorRepo.save(author);
    }

    @Override
    public Long count() {
        return authorRepo.count();
    }

    @Override
    public List<Author> getAll() {
        return authorRepo.findAll();
    }

    @Override
    public Author getOneById(Long id) {
        return authorRepo.findById(id).orElse(new Author());
    }

    @Override
    public int countBooks(Author author) {
        return bookService.getByAuthor(author).size();
    }

    @Override
    public Author update(Author author, Long id) {
        Author authorFromDb = getOneById(id);
        BeanUtils.copyProperties(author, authorFromDb, "id");
        return authorRepo.save(authorFromDb);
    }

    @Override
    public void delete(Author author) {
        authorRepo.delete(author);
    }
}
