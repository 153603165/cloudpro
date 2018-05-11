package com.wang;

import java.security.Principal;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@EnableDiscoveryClient
@RestController
public class Oauth2Application {

	public static void main(String[] args) {

		SpringApplication.run(Oauth2Application.class, args);

	}

	@RequestMapping("/user")
	public Principal user(Principal user) {
		return user;
	}

}
