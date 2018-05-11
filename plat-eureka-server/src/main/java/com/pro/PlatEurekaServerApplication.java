package com.pro;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;

@EnableEurekaServer
@SpringBootApplication
public class PlatEurekaServerApplication {

	public static void main(String[] args) {
		SpringApplication.run(PlatEurekaServerApplication.class, args);
	}
}
