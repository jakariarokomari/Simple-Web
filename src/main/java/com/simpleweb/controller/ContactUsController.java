package com.simpleweb.controller;

import com.simpleweb.model.ContactUs;
import com.simpleweb.service.ContactUsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Jakaria on 7/16/2017.
 */
@Controller
@RequestMapping("/contactus")
public class ContactUsController {

    @Autowired
    private ContactUsService contactUsService;

    private static final String VIEW_PATH = "/";
    private static final String CONTACT_US = VIEW_PATH+"contactus";

    @RequestMapping(value = "")
    public String contactUS(){
        return CONTACT_US;
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public String submitContactUS(ContactUs contactUs) {
        try {
            contactUsService.saveContactUs(contactUs);
        } catch (Exception e){
            e.printStackTrace();
        }
        return "redirect:"+CONTACT_US;
    }
}
