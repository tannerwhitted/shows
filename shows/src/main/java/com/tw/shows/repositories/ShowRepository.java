package com.tw.shows.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.tw.shows.models.Show;

@Repository

public interface ShowRepository extends CrudRepository<Show, Long> {

	List<Show> findAll();
	
	List<Show> findByNameContaining(String search);
	
	Long deleteByNameStartingWith(String search);
}
