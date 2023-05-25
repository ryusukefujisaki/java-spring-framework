package jp.co.app;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class FrameworkController {
	@GetMapping("/framework")
	public String index() {
		return "framework";
	}
}
