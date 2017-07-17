package com.mkyong.service;

import com.mkyong.model.ContactUs;
import com.mkyong.repository.ContactUsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * Created by Jakaria on 7/17/2017.
 */
@Component(value = "contactservice")
public class ContactUsService {

    @Autowired
    ContactUsRepository contactUsRepository;

    public void saveContactUs(ContactUs contactUs) {
        contactUsRepository.save(contactUs);
    }
}
