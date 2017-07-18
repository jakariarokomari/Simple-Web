package com.simpleweb.service;

import com.simpleweb.model.Post;
import com.simpleweb.repository.PostRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.Date;
import java.util.List;

/**
 * Created by Jakaria on 7/17/2017.
 */
@Component(value = "postService")
public class PostService {
    @Autowired
    private PostRepository postRepository;

    public void postAdd(Post post){
        if(null == post.getId()) {
            post.setStatus(Post.Status.ACTIVE);
            post.setCreated(new Date());
            post.setPositiveVote(0);
            post.setNegativeVote(0);
            postRepository.save(post);
        } else {
            Post postbyId = postRepository.findById(post.getId());
            postbyId.setUpdated(new Date());
            postRepository.save(postbyId);
        }

    }


    public List<Post> getPostsByStatus(){
        List<Post> posts = postRepository.findAllByStatusOrderByCreatedDesc(Post.Status.ACTIVE);
        return posts;
    }

    public List<Post> getPostList(){
        List<Post> postList = postRepository.findAll();
        return postList;
    }

    public Post getById(Long id){
        Post post = postRepository.findById(id);
        return post;
    }
}
