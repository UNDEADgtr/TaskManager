package com.undead.tm.controller;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author Khralovich Dzmitry
 */
@Controller
public class MainController {

    private final static Logger logger = LoggerFactory.getLogger(MainController.class);

    @RequestMapping(value = "")
    public String redirect(ModelMap model) {
        return "main";
    }

}
