package com.spring.boot.sample;

import static org.junit.Assert.assertEquals;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class SampleSpringApplicationTests {

	@Autowired
	String response;
	@Value("${request.get.response}")
	String responseVal;
	
	@Test
	public void contextLoads() {
		assertEquals("Hodor!", responseVal);
	}
	
	@Test
	public void testResponse() {
		assertEquals("Hodor!", response);
	}

}
