package com.simpleweb.controller;

import com.simpleweb.model.Post;
import com.simpleweb.service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

/**
 * Created by Jakaria on 7/18/2017.
 */
@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private PostService postService;

    private static final String VIEW_PATH = "/";
    private static final String POST_LIST = VIEW_PATH+"admin/post/list";
    private static final String POST_EDIT = VIEW_PATH+"admin/post/edit";


    @RequestMapping(value = "")
    public String admin() {
        return "admin/admin";
    }

    @RequestMapping(value = "/post/list",method = RequestMethod.GET)
    public String getpostlist(Model model) {
        List<Post> posts = postService.getPostList();
        model.addAttribute("posts",posts);
        return POST_LIST;
    }

    @RequestMapping(value = "/post/edit/{id}",method = RequestMethod.GET)
    public String getById(@PathVariable(value = "id") Long id, Model model) {
        Post post = postService.getById(id);
        model.addAttribute("post",post);
        return POST_EDIT;
    }

    @RequestMapping(value = "/post/edit", method = RequestMethod.POST)
    public String editPost(Post post) {
        try {
            postService.postAdd(post);
        } catch (Exception e){
            e.printStackTrace();
        }
        return "redirect:/admin/post/list";
    }
}
