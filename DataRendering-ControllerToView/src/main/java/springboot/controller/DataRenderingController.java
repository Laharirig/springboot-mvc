package springboot.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import jakarta.servlet.http.HttpServletResponse;
import springboot.model.Person;


@Controller
public class DataRenderingController {
	
	int count = 1;
	
	@GetMapping("/")
	public String wellcomePage(Map<String,Object> map) {
		map.put("msg1", "This data is from controller");
		map.put("msg2","count value is "+count);
		count++;
		return "forward:render";
	}
	
	@GetMapping("/render")
	public void page2(HttpServletResponse resp) throws IOException {
		resp.setContentType("text/html");
		PrintWriter pw = resp.getWriter();
		pw.print("<h1>This is without any view page</h1>");
		
	}
	
	@GetMapping("/data")
	public String sendingData(Map<String, Object> map) {
		map.put("names", List.of("Bhanu Chandar", "Bhargavi", "Ramana"));
		Person p1 = new Person("Bhanu Chandar",22,"Male","PG");
		map.put("person", p1);
		List<Person> persons = List.of(new Person("Bhanu Chandar",22,"Male","PG"), 
				new Person("Ramana",20,"Male","UG"), 
				new Person("Bhargavi",24,"Female","PG"));
		map.put("persons", persons);
		
		return "index";
	}
}
