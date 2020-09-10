package com.valunskii.grimoire.service;

import com.valunskii.grimoire.domain.Tag;

import java.util.List;

public interface TagService {
    Long count();

    Tag create(Tag tag);

    List<Tag> getAll();

    Tag getOneById(Long id);

    Tag update(Tag tag, Long id);

    void delete(Tag tag);
}
