package jp.co.app;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HelloWorldController {
	@GetMapping("/")
	public String index() {
		return "helloWorld";
	}
}
