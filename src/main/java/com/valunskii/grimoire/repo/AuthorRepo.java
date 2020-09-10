package com.valunskii.grimoire.repo;

import com.valunskii.grimoire.domain.Author;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AuthorRepo extends JpaRepository<Author, Long> {
}

