package demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.security.oauth2.config.annotation.web.configuration.EnableResourceServer;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@EnableDiscoveryClient
@RestController
@EnableResourceServer
public class CmsApplication {

	@RequestMapping("/")
	public String home() {
		return "Hello World cms";
	}

	public static void main(String[] args) {
		SpringApplication.run(CmsApplication.class, args);
	}

}
