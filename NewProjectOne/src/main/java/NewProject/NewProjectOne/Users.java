package NewProject.NewProjectOne;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;



@Entity
@Table(name="UserTable")
public class Users {
	@Id
	@Column
	private String name;
	@Column
	private String password;
	@Column
	private String gender;
	@Column
	private String country;
	
//	private List countryList;
	@Column
	private String aboutYou;
	/*@Column
	private String[] community;*/
//	private List communityList;
	@Column
	/*private Boolean mailingList;*/
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	 
	public String getAboutYou() {
		return aboutYou;
	}
	public void setAboutYou(String aboutYou) {
		this.aboutYou = aboutYou;
	}
	/*public String[] getCommunity() {
		return community;
	}
	public void setCommunity(String[] community) {
		this.community = community;
	}
	 
	public Boolean getMailingList() {
		return mailingList;
	}
	public void setMailingList(Boolean mailingList) {
		this.mailingList = mailingList;
	}*/
	
		
}