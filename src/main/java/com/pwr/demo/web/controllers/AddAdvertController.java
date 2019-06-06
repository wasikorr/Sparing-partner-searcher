package com.pwr.demo.web.controllers;

import com.pwr.demo.domain.models.Advert;
import com.pwr.demo.domain.models.User;
import com.pwr.demo.services.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.security.Principal;

@Controller
@RequestMapping("/show-adverts/add-advert/{number}")
public class AddAdvertController {

    UserService userService;

    public AddAdvertController(UserService userService){
        this.userService = userService;
    }

    @GetMapping
    public String showAdvertForm(Model model, @PathVariable("number") Integer number) {

        model.addAttribute("advert", new Advert());
        model.addAttribute("number",number);
        return "add-adv";
    }

    @PostMapping
    public String addAdvert(@Valid @ModelAttribute("advert") Advert form, BindingResult result, Principal principal,
                            @PathVariable("number") Integer number) {

        if(result.hasErrors())
            return "add-adv";

        userService.addAdvert(form, principal.getName(),number);
        return "redirect:/show-adverts/{number}";
    }

}
