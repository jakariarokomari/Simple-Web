package com.simpleweb.controller;

import com.simpleweb.model.Post;
import com.simpleweb.service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
public class WelcomeController {

	@Autowired
	private PostService postService;

	@RequestMapping(value = "/",method = RequestMethod.GET)
	public String welcome(Model model) {
		List<Post> posts = postService.getPostsByStatus();
		model.addAttribute("posts",posts);
		return "welcome";
	}

}