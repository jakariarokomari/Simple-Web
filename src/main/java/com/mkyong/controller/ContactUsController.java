package com.mkyong.controller;

import com.mkyong.model.ContactUs;
import com.mkyong.service.ContactUsService;
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
    private static final String CONTACT_PART = VIEW_PATH+"contactus";

    @RequestMapping(value = "")
    public String contactUS(){
        return CONTACT_PART;
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public String submitContactUS(ContactUs contactUs) {
        try {
            contactUsService.saveContactUs(contactUs);
        } catch (Exception e){
            e.printStackTrace();
        }
        return "redirect:"+CONTACT_PART;
    }
}
