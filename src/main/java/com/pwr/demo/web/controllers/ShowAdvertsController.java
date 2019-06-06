package com.pwr.demo.web.controllers;

import com.pwr.demo.domain.models.Advert;
import com.pwr.demo.services.AdvertService;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletRequest;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/show-adverts/{number}")
public class ShowAdvertsController {

    AdvertService advertService;

    public ShowAdvertsController(AdvertService advertService){
        this.advertService = advertService;
    }

    @GetMapping
    public String showAdverts(@PathVariable("number") Integer number, Model model) {

        List<Advert> adverts = advertService.findByDiscipline(number);

        model.addAttribute("adverts", adverts);
        model.addAttribute("number",number);
        Advert adv = new Advert();
        adv.setDiscipline(number);
        System.out.println(adv.toString());
        model.addAttribute("filter", adv);



        return "show-adverts";
    }
}
