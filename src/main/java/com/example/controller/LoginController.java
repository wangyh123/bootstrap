package com.example.controller;

import com.example.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("login")
public class LoginController {

    @RequestMapping("main")
    public String main(User user){
        String username = user.getUsername();
        String pwd = user.getPassword();
        System.out.println("====user :"+username +"===pwd :"+pwd);
        return "main";
    }

    @RequestMapping("register")
    public String register(){
        return "register";
    }
}
