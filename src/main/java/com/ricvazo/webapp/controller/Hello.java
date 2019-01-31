package com.ricvazo.webapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/hello")
public class Hello {
	@RequestMapping("/world")
	public String world(Model model) {
		return "hello";
	}
}
