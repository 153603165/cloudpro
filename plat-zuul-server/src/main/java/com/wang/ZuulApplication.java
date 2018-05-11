package com.wang;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.security.oauth2.client.EnableOAuth2Sso;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.netflix.zuul.EnableZuulProxy;
import org.springframework.context.annotation.Bean;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.oauth2.client.OAuth2ClientContext;
import org.springframework.security.oauth2.client.OAuth2RestTemplate;
import org.springframework.security.oauth2.client.resource.OAuth2ProtectedResourceDetails;
import org.springframework.security.web.csrf.CookieCsrfTokenRepository;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@EnableDiscoveryClient
@RestController
@SpringBootApplication
@EnableZuulProxy
@EnableOAuth2Sso
public class ZuulApplication extends WebSecurityConfigurerAdapter{

	public static void main(String[] args) {
		SpringApplication.run(ZuulApplication.class, args);
	}

	@RequestMapping("/hello")
	public String home() {
		return "Hello World zuul";
	}

	@RequestMapping("/auth")
	public String auth() {
		return "Hello World zuul auth";
	}

	@Bean
	protected OAuth2RestTemplate OAuth2RestTemplate(
			OAuth2ProtectedResourceDetails resource, OAuth2ClientContext context) {
		return new OAuth2RestTemplate(resource, context);
	}

	@Override
	public void configure(HttpSecurity http) throws Exception {
		// @formatter:off
		http
			.authorizeRequests()
				.antMatchers("/index.html", "/home.html", "/" ,"/uaa/**").permitAll()
				.anyRequest().authenticated()
				.and()
			.csrf()
				.csrfTokenRepository(CookieCsrfTokenRepository.withHttpOnlyFalse());
		// @formatter:on

//		1.首先当我们要自定义Spring Security的时候我们需要继承自WebSecurityConfigurerAdapter来完成，相关配置重写对应 方法即可。
//		2.我们在这里注册CustomUserService的Bean，然后通过重写configure方法添加我们自定义的认证方式。
//		3.在configure(HttpSecurity http)方法中，我们设置了登录页面，而且登录页面任何人都可以访问，然后设置了登录失败地址，也设置了注销请求，注销请求也是任何人都可以访问的。
//		4.permitAll表示该请求任何人都可以访问，.anyRequest().authenticated(),表示其他的请求都必须要有权限认证。
//		5.这里我们可以通过匹配器来匹配路径，比如antMatchers方法，假设我要管理员才可以访问admin文件夹下的内容，我可以这样来写：.antMatchers("/admin/**").hasRole("ROLE_ADMIN")，也可以设置admin文件夹下的文件可以有多个角色来访问，写法如下：.antMatchers("/admin/**").hasAnyRole("ROLE_ADMIN","ROLE_USER")
//		6.可以通过hasIpAddress来指定某一个ip可以访问该资源,假设只允许访问ip为210.210.210.210的请求获取admin下的资源，写法如下.antMatchers("/admin/**").hasIpAddress("210.210.210.210")

//		hasRole([role])
//		当前用户是否拥有指定角色。
//		hasAnyRole([role1,role2])
//		多个角色是一个以逗号进行分隔的字符串。如果当前用户拥有指定角色中的任意一个则返回true。
//		hasAuthority([auth])
//		等同于hasRole
//		hasAnyAuthority([auth1,auth2])
//		等同于hasAnyRole
//		Principle
//		代表当前用户的principle对象
//		authentication
//		直接从SecurityContext获取的当前Authentication对象
//		permitAll
//		总是返回true，表示允许所有的
//		denyAll
//		总是返回false，表示拒绝所有的
//		isAnonymous()
//		当前用户是否是一个匿名用户
//		isRememberMe()
//		表示当前用户是否是通过Remember-Me自动登录的
//		isAuthenticated()
//		表示当前用户是否已经登录认证成功了。
//		isFullyAuthenticated()
//		如果当前用户既不是一个匿名用户，同时又不是通过Remember-Me自动登录的，则返回true。

	}
}
