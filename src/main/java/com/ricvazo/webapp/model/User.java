package com.ricvazo.webapp.model;


import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.NotEmpty;

import javax.validation.constraints.Size;
import java.util.List;

public class User {
	@NotBlank(message = "Name is required")
	@Size(min = 3, max = 20, message = "Name must have at least {min} chars and maximum {max} chars")
	private String name;

	@NotBlank
	@Email(message = "Enter a valid Email")
	private String email;

	@NotEmpty(message = "Select your gender.")
	private String gender;

	@NotEmpty(message = "Select at least one language")
	private List<String> languages;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public List<String> getLanguages() {
		return languages;
	}

	public void setLanguages(List<String> languages) {
		this.languages = languages;
	}
}
