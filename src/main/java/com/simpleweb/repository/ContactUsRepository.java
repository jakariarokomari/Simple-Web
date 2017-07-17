package com.simpleweb.repository;

import com.simpleweb.model.ContactUs;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by Jakaria on 7/17/2017.
 */
@Repository
public interface ContactUsRepository extends CrudRepository<ContactUs, Integer> {
}
