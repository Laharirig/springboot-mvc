package springboot.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import springboot.model.Person;

@Controller
public class DataBindingController {

	@GetMapping("/form")
	public String loadFormPage() {
		return "index";
	}
	
	@PostMapping("/form")
	public String getFormData(@ModelAttribute("per") Person person,Map<String, Object> map) {
		System.out.println(person);
		map.put("person", person);
		return "index";
	}
	
	@GetMapping("/form2")
	public String loadPersonFormPage(@ModelAttribute("per") Person person,Map<String, Object> map) {
		System.out.println(person);
		map.put("person", person);
		return "person-formpage";
	}
	@PostMapping("/form2")
	public String getPersonFormData(@ModelAttribute("per") Person person,Map<String, Object> map) {
		System.out.println(person);
		map.put("person", person);
		return "person-formpage";
	}
}
