package com.pwr.demo.domain.repositories;

import com.pwr.demo.domain.models.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<User,Long> {


    User findByUsername(String name);

}
