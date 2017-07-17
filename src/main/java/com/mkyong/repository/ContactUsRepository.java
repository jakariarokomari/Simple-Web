package com.mkyong.repository;

import com.mkyong.model.ContactUs;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by Jakaria on 7/17/2017.
 */
@Repository
public interface ContactUsRepository extends CrudRepository<ContactUs, Integer> {
}
