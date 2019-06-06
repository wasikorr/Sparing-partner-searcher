package com.pwr.demo.web.controllers;

import com.pwr.demo.domain.models.Advert;
import com.pwr.demo.domain.repositories.AdvertRepository;
import com.pwr.demo.services.AdvertService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/show-adverts/{number}/filter")
public class FilterController {

    AdvertService advertService;

    public FilterController(AdvertService advertService) {
        this.advertService = advertService;
    }

    @PostMapping
    public String filter(@Valid @ModelAttribute("filter") Advert filter, BindingResult result,
                            @PathVariable("number") Integer number,Model model) {

        if(result.hasErrors())
            return "show-adverts";

        List<Advert> filterAdverts;
        filter.setDiscipline(number);



        if(filter.getCity() == null || filter.getCity().equals("")){
            System.out.println("#33333333333333333333333333333 CITY == NULL ");
            filterAdverts = advertService.filterWithoutCity(filter.getPlayerSkills(),filter.getWantSparring(),
                    filter.getWantTraining(),number);

        }
        else{
            filterAdverts = advertService.filter(filter.getCity(),filter.getPlayerSkills(),
                    filter.getWantSparring(),filter.getWantTraining(),number);
        }



//        List<Advert> filterAdverts = advertService.filterCity(filter.getCity());


        model.addAttribute("adverts", filterAdverts);
        model.addAttribute("number",number);


        return "show-adverts";
    }

}
