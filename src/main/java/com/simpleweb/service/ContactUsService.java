package com.simpleweb.service;

import com.simpleweb.model.ContactUs;
import com.simpleweb.repository.ContactUsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * Created by Jakaria on 7/17/2017.
 */
@Component(value = "contactUsService")
public class ContactUsService {

    @Autowired
    private ContactUsRepository contactUsRepository;

    public void saveContactUs(ContactUs contactUs) {
        contactUsRepository.save(contactUs);
    }
}
