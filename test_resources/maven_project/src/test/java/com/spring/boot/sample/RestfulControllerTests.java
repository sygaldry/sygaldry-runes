package com.spring.boot.sample;
import static org.junit.Assert.assertEquals;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class RestfulControllerTests {

	@Autowired
	RestfulController restController;
	@Autowired
	String response;
	
	@Test
	public void hodorTest() {
		assertEquals("Hodor!", restController.hodor());
	}
}
