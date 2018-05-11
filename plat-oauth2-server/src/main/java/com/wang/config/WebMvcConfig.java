package com.wang.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

@Configuration
public class WebMvcConfig extends WebMvcConfigurerAdapter {

	@Override
	public void addViewControllers(ViewControllerRegistry registry) {
		registry.addViewController("/login").setViewName("login");
//		scope.read=on&user_oauth_approval=on
//		user_oauth_approval=true&scope.read=true&authorize=Authorize
//		http://localhost:9999/uaa/oauth/authorize
	}
}
