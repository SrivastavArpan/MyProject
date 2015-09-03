package NewProject.NewProjectOne;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import NewProject.NewProjectOne.UserDaoImpl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
@Service
public class UserServiceImpl implements UserService{
 
	@Autowired
	private UserDao userDao;
	
	
	
	@Override
	@Transactional
	public void addUsers(Users u) {
		 this.userDao.addPerson(u);
	    }


	@Override
	public void show() {
		System.out.println("This is the method of Service");
		
	}
		
	}


