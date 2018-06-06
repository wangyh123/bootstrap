package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("index")
public class IndexController {
    @RequestMapping("login")
    public String login(){
        return "login";
    }

    @RequestMapping("register")
    public String register(){
        return "register";
    }

    @RequestMapping("test")
    public String test(){
        return "test";
    }
}
