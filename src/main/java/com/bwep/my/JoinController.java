package com.bwep.my;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class JoinController {

	@RequestMapping("/joinPage.my")
	public String goJoin() {
		return "joinPage";
	}
}
