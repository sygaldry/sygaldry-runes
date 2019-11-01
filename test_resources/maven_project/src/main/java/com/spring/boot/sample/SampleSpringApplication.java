package com.spring.boot.sample;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class SampleSpringApplication {
	
	@Value("${request.get.response}")
	String response;

	public static void main(String[] args) {
		SpringApplication.run(SampleSpringApplication.class, args);
	}
	
	@Bean
	public String response() {
		return response;
	}
	
}
