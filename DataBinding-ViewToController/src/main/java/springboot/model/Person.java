package springboot.model;

import lombok.Data;

@Data
public class Person {
	private String name;
	private Integer age;
	private String gender;
	private String qualification="PG";
}
