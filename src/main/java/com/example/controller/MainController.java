package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("main")
public class MainController {

    @RequestMapping("login")
    public String login(){
        return "login";
    }

    @RequestMapping("test")
    public String test(String title, String title2, Model model){
        model.addAttribute("title",title);
        model.addAttribute("title2",title2);
        return "test";
    }
}
