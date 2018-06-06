package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("index")
public class IndexController {
    @RequestMapping("main")
    public String main(){
        return "main";
    }

    @RequestMapping("test")
    public String test(){
        return "test";
    }
}
