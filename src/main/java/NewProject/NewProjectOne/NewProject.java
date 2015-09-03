package NewProject.NewProjectOne;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class NewProject 
{
	@Autowired(required=true)
	private UserService userService;
	
	@RequestMapping(value="/", method = RequestMethod.GET)
	public String Welcome(ModelMap model)
	{
		System.out.println("The page has been rendered");
		userService.show();
		model.addAttribute("users", new Users());
		return "Welcome";
	}
	 @RequestMapping("/result")
	    public String  Result(@ModelAttribute("users") Users u){
		 this.userService.addUsers(u);
	    	System.out.println("This is result page");
	    	return "result";
	    	
	  }
   /* @RequestMapping(value="/result", method = RequestMethod.POST)
    public String  Result(){
    	System.out.println("This is result page");
    	return "result";
    	
  }*/
}