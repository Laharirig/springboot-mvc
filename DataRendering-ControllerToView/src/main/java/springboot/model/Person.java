package springboot.model;

public class Person {
	private String name;
	private Integer age;
	private String gender;
	private String qualification;
	public Person(String name, Integer age, String gender, String qualification) {
		super();
		this.name = name;
		this.age = age;
		this.gender = gender;
		this.qualification = qualification;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getQualification() {
		return qualification;
	}
	public void setQualification(String qualification) {
		this.qualification = qualification;
	}
	
}
