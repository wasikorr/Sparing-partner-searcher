package com.pwr.demo.web.controllers;

import com.pwr.demo.domain.models.User;
import com.pwr.demo.domain.repositories.UserRepository;
import com.pwr.demo.services.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@Controller
@RequestMapping("/register")
public class RegisterController {

    UserService userService;

    public RegisterController(UserService userService){
        this.userService = userService;

    }

    @GetMapping
    public String displayRegisterForm(Model model) {

        model.addAttribute("form", new User());
        return "register";
    }

    @PostMapping
    public String saveUser(@Valid @ModelAttribute("form") User form, BindingResult result) {

        if(result.hasErrors())
            return "register";


        userService.saveUser(form);

        return "redirect:/";

    }

}
