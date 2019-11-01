package com.spring.boot.sample;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class RestfulController {
	
	@Autowired
	String response;
	
	@RequestMapping("/hodor")
	public String hodor() {
		return response;
	}
	
}
