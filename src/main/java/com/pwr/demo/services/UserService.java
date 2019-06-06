package com.pwr.demo.services;

import com.pwr.demo.domain.models.Advert;
import com.pwr.demo.domain.models.User;
import com.pwr.demo.domain.repositories.AdvertRepository;
import com.pwr.demo.domain.repositories.UserRepository;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
public class UserService {

    UserRepository userRepository;
    PasswordEncoder passwordEncoder;
    AdvertRepository advertRepository;

    public UserService(UserRepository userRepository, PasswordEncoder passwordEncoder,AdvertRepository advertRepository){
        this.userRepository = userRepository;
        this.passwordEncoder = passwordEncoder;
        this.advertRepository = advertRepository;
    }

    @Transactional
    public void saveUser(User form) {
        form.setPassword(passwordEncoder.encode(form.getPassword()));
        userRepository.save(form);
    }

    @Transactional
    public void addAdvert(Advert form, String name, Integer number) {
        User user = userRepository.findByUsername(name);
        List<Advert> userAdverts = user.getAdverts();
        form.setDiscipline(number);
        form.setUser(user);
        advertRepository.save(form);
        userAdverts.add(form);
        userRepository.save(user);
    }
}
