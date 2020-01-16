package com.tw.shows.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tw.shows.models.Show;
import com.tw.shows.models.User;
import com.tw.shows.services.ShowService;
import com.tw.shows.services.UserService;

@Controller

public class Shows {

	private final ShowService showService;
	
	private final UserService userService;
	
	public Shows(ShowService showService, UserService userService) {
		this.showService = showService;
		this.userService = userService;
	}

	@RequestMapping("/shows")
	public String index(HttpSession session, Model model) {
    	Long userId = (Long) session.getAttribute("userId");
    	User u = userService.findUserById(userId);
    	model.addAttribute("user", u);
		List<Show> shows = showService.allShows();
		model.addAttribute("shows", shows);
		
		return "homePage.jsp";
	}
	
	@RequestMapping("/shows/new")
	public String newShow(@ModelAttribute("show") Show show) {
		return "/new.jsp";
	}
	
	@RequestMapping(value="/shows", method=RequestMethod.POST)
	public String create(@Valid @ModelAttribute("show") Show show, BindingResult result) {
		if (result.hasErrors()) {
			return "/new.jsp";
		} else {
			showService.createShow(show);
			return "redirect:/shows";
		}
	}
	
	@RequestMapping("/shows/edit/{id}")
	public String edit(@PathVariable("id") Long id, Model model) {
		Show show = showService.findShow(id);
		model.addAttribute("show", show);
		return "edit.jsp";
	}
	
	@RequestMapping(value="/shows/{id}", method=RequestMethod.POST)
	public String update(@Valid @ModelAttribute("show") Show show, BindingResult result) {
		if (result.hasErrors()) {
			return "/edit.jsp";
		} else {
			showService.updateShow(show);
			return "redirect:/shows";
		}
	}
	
	@GetMapping("/shows/show/{id}")
	public String show(@PathVariable("id") Long id, Model viewModel) {
		Show show = showService.findShow(id);
		viewModel.addAttribute("show", show);
		return "/show.jsp";
	}
	
	@RequestMapping(value="/shows/{id}", method=RequestMethod.DELETE)
	public String destroy(@PathVariable("id") Long id) {
		showService.deleteShow(id);
		return "redirect:/shows";
	}
}
