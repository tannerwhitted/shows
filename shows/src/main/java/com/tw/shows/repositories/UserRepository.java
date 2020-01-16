package com.tw.shows.repositories;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.tw.shows.models.User;
@Repository
public interface UserRepository extends CrudRepository<User, Long> {
    User findByEmail(String email);
}
