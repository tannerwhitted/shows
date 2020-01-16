package com.tw.shows.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.tw.shows.models.Show;
import com.tw.shows.repositories.ShowRepository;

@Service

public class ShowService {

	private final ShowRepository showRepository;
	
	public ShowService(ShowRepository showRepository) {
		this.showRepository = showRepository;
	}
	
	public List<Show> allShows() {
		return showRepository.findAll();
	}
	public Show createShow(Show s) {
		return showRepository.save(s);
	}
	public Show findShow(Long id) {
		Optional<Show> optionalShow = showRepository.findById(id);
		if(optionalShow.isPresent()) {
			return optionalShow.get();
		} else {
			return null;
		}
	}
	public Show updateShow(Show s) {
		return showRepository.save(s);
	}
	public void deleteShow(Long id) {
		showRepository.deleteById(id);
	}
}
