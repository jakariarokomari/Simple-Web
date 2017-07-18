package com.simpleweb.controller;

import com.simpleweb.model.Post;
import com.simpleweb.service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Jakaria on 7/17/2017.
 */
@Controller
@RequestMapping("/post")
public class PostController {

    @Autowired
    private PostService postService;

    private static final String VIEW_PATH = "/";
    private static final String POST_FROM = VIEW_PATH+"postadd";
    private static final String POST_LIST = VIEW_PATH+"admin/post/list";

    @RequestMapping(value = "")
    public String post(){
        return POST_FROM;
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public String savePost(Post post) {
        try {
            postService.postAdd(post);
        } catch (Exception e){
            e.printStackTrace();
        }
        return "redirect:/post";
    }

}
