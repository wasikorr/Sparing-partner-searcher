package com.pwr.demo.domain.models;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Table(name = "adverts")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Advert {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private  Long     id;

    @Column(nullable = false)
    private  Integer  discipline;

    private  String  description;

    @Column(nullable = false)
    private  String  city;

    @Column(nullable = false)
    private  String  cityRegion;

    @Column(nullable = false)
    private  Integer     experience;

    private  Boolean wantSparring;
    private  Boolean wantTraining;

    @Column(nullable = false)
    private String playerSkills;

    @Column(nullable = false)
    private String gameStyle;

    @ManyToOne
    public User user;



//    public enum playerSkills {
//        BEGINNER,
//        INTERMEDIATE,
//        UPPER_INTERMEDIATE,
//        ADVANCED,
//        EXPERT
//    }
//    public enum gameStyle {
//        OFFENSIVE,
//        DEFENSIVE
//    }

}
