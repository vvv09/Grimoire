package com.valunskii.grimoire.controller;

import com.valunskii.grimoire.domain.Tag;
import com.valunskii.grimoire.service.TagService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping(value = "/tags")
public class TagController {

    private TagService tagService;

    @Autowired
    public void setClassroomRepo(TagService tagService) {
        this.tagService = tagService;
    }

    @GetMapping
    public String retrieveAll(Model model) {
        List<Tag> tags = tagService.getAll();
        model.addAttribute("tags", tags);
        model.addAttribute("amount", tagService.count());
        model.addAttribute("history", "tags");
        return "tag/tag-list";
    }

    @GetMapping("/new")
    public String retrieveNewFormForEdit(Model model) {
        model.addAttribute("tag", new Tag());
        model.addAttribute("update", false);
        model.addAttribute("history", "items");
        return "tag/tag-form";
    }

    @PostMapping
    public String createTag(@ModelAttribute("tag") Tag tag) {
        tagService.create(tag);
        return "redirect:/tags";
    }

    @PostMapping("{id}")
    public String updateTag(@ModelAttribute("tag") Tag tag, @PathVariable("id") Long id, Model model) {
        try {
            tagService.update(tag, id);
            model.addAttribute("history", "items");
            return "redirect:/tags";
        } catch (Exception e) {
//            logger.error(errorMessage);
            model.addAttribute("errorMessage", e.getMessage());
            model.addAttribute("update", true);
            return "tag/tag-form";
        }
    }

    @GetMapping("/{tag}")
    public String retrieveOneById(@PathVariable Tag tag, Model model) {
        model.addAttribute("tag", tag);
        model.addAttribute("update", true);
        model.addAttribute("history", "items");
        return "tag/tag-form";
    }

    @GetMapping("/delete/{tag}")
    public String deleteTag(@PathVariable Tag tag, Model model) {
        tagService.delete(tag);
        model.addAttribute("history", "items");
        return "redirect:/tags";
    }
}
