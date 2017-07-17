package com.simpleweb.service;

import com.simpleweb.model.Post;
import com.simpleweb.repository.PostRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.Date;

/**
 * Created by Jakaria on 7/17/2017.
 */
@Component(value = "postService")
public class PostService {
    @Autowired
    private PostRepository postRepository;

    public void postAdd(Post post){
        post.setStatus(Post.Status.ACTIVE);
        post.setCreated(new Date());
        post.setPositiveVote(0);
        post.setNegativeVote(0);
        postRepository.save(post);
    }
}
