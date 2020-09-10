package com.valunskii.grimoire.repo;

import com.valunskii.grimoire.domain.Tag;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TagRepo extends JpaRepository<Tag, Long> {
}
