package hello;

import java.util.HashSet;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
@Service("UserService")
@Transactional
public class UserServiceImpl  implements UserService{
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private RoleRepository roleRepository;
	
	@Autowired 
	private PasswordEncoder passwordEncoder;
	
	@Override
	public User findById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void saveUser(User user) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateUser(User user) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteUserById(int id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<User> findAllUsers() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void registrationUser(User user) {
		/*if (userRepository.findByUsername(user.getUsername()) == null) {*/
			User member = new User();
			member.setUsername(user.getUsername());
			member.setPassword(passwordEncoder.encode(user.getPassword()));
			HashSet<Role> roles = new HashSet<>();
			roles.add(roleRepository.findByName("ROLE_MEMBER"));
			member.setRoles(roles);
			userRepository.save(member);
	//	}
		
	}

}
