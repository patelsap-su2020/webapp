package com.webapp.assignment.Repository;

import com.webapp.assignment.Entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

import org.springframework.data.repository.query.Param;

@EnableJpaRepositories
public interface UserRepository extends JpaRepository<User,String> {

    User findByEmailid(@Param("emailid") String emailid);
}
