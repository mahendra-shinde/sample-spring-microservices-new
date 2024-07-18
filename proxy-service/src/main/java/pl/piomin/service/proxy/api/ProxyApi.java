package pl.piomin.service.proxy.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cloud.netflix.zuul.filters.ZuulProperties;

import org.springframework.context.annotation.Configuration;


@Configuration
public class ProxyApi {

	@Autowired
	ZuulProperties properties;


}
