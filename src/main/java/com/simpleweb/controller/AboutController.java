package com.simpleweb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Jakaria on 7/13/2017.
 */
@Controller
public class AboutController {

    @RequestMapping(value = "/about")
    public String getAbout(){
        return "about";
    }


}
