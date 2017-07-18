package com.simpleweb.repository;

import com.simpleweb.model.Post;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Jakaria on 7/17/2017.
 */
@Repository
public interface PostRepository extends CrudRepository<Post, Integer> {

    List<Post> findAllByStatusOrderByCreatedDesc(Post.Status status);
    List<Post> findAll();
    Post findById(Long id);
}
