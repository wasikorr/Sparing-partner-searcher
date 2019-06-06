package com.pwr.demo.domain.repositories;

import com.pwr.demo.domain.models.Advert;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface AdvertRepository extends JpaRepository<Advert,Long> {

    Optional<Advert> findById(Long id);
    List<Advert> findByDiscipline(Integer number);
    List<Advert> findByCity(String city);

    @Query(value = "SELECT * FROM adverts WHERE city = ?1 AND player_skills = ?2 AND want_sparring = ?3 AND " +
            "want_training = ?4 AND discipline = ?5", nativeQuery = true)
    List<Advert> filter(String city,String level, Boolean wantSparring ,Boolean wantTraining, Integer number);

    @Query(value = "SELECT * FROM adverts WHERE city = ?1 AND discipline = ?2", nativeQuery = true)
    List<Advert> filterCity(String city,Integer number);

    @Query(value = "SELECT * FROM adverts WHERE player_skills = ?1 AND want_sparring = ?2 AND want_training = ?3 AND " +
            "discipline = ?4",nativeQuery = true)
    List<Advert> filterWithoutCity(String playerSkills, Boolean wantSparring, Boolean wantTraining, Integer number);
}
