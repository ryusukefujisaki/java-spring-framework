package jp.co.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HelloWorldController {
	@GetMapping("/")
	public String index() {
		return "helloWorld";
	}
}
