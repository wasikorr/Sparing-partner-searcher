package com.pwr.demo.services;

import com.pwr.demo.domain.models.Advert;
import com.pwr.demo.domain.repositories.AdvertRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
import java.util.Optional;

@Service
public class AdvertService {

    AdvertRepository advertRepository;

    public AdvertService(AdvertRepository advertRepository){
        this.advertRepository = advertRepository;
    }

    public List<Advert> findByDiscipline(Integer number) {
        return advertRepository.findByDiscipline(number);
    }

    public Advert findById(Long id) {
        Optional<Advert> optionalAdvert = advertRepository.findById(id);
        Advert loadedAdvert = optionalAdvert.orElse(null);

        return loadedAdvert;
    }

    public List<Advert> findByCity(String paramMap) {
        return advertRepository.findByCity(paramMap);
    }


    public List<Advert> filter(String city,String level, boolean wantSparring,boolean wantTraining, Integer number) {
        return advertRepository.filter(city,level,wantSparring,wantTraining,number);
    }

    public List<Advert> filterCity(String city,Integer number) {
        return advertRepository.filterCity(city,number);
    }

    public List<Advert> filterWithoutCity(String playerSkills, Boolean wantSparring, Boolean wantTraining, Integer number) {
        return advertRepository.filterWithoutCity(playerSkills,wantSparring,wantTraining,number);
    }
}
