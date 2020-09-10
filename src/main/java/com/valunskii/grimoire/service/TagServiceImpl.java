package com.valunskii.grimoire.service;

import com.valunskii.grimoire.domain.Tag;
import com.valunskii.grimoire.repo.TagRepo;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TagServiceImpl implements TagService {
    TagRepo tagRepo;

    @Autowired
    public TagServiceImpl(TagRepo tagRepo) {
        this.tagRepo = tagRepo;
    }

    @Override
    public Tag create(Tag tag) {
        return tagRepo.save(tag);
    }

    @Override
    public Long count() {
        return tagRepo.count();
    }

    @Override
    public Tag update(Tag tag, Long id) {
        Tag tagFromDb = getOneById(id);
        BeanUtils.copyProperties(tag, tagFromDb, "id");
        return tagRepo.save(tagFromDb);
    }

    @Override
    public List<Tag> getAll() {
        return tagRepo.findAll();
    }

    @Override
    public Tag getOneById(Long id) {
        return tagRepo.findById(id).orElse(new Tag());
    }

    @Override
    public void delete(Tag tag) {
        tagRepo.delete(tag);
    }
}
