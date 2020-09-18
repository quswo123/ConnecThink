package test;

import static org.junit.jupiter.api.Assertions.*;

import java.util.ArrayList;
import java.util.List;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.ContextHierarchy;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import com.connecthink.entity.Customer;
import com.connecthink.entity.Project;
import com.connecthink.entity.Task;
import com.connecthink.repository.CustomerRepository;
import com.connecthink.repository.ProjectRepository;
import com.connecthink.repository.TaskRepository;

@ExtendWith(SpringExtension.class)
//@ContextConfiguration(locations = "file:WebContent\\WEB-INF\\mvc-servlet.xml")
@ContextHierarchy({ @ContextConfiguration(locations = "file:WebContent\\WEB-INF\\spring\\root-context.xml"),
		@ContextConfiguration(locations = "file:WebContent\\WEB-INF\\spring\\appservlet\\servlet-context.xml") })

class TaskTest {
	@Autowired
	private TaskRepository repository;
	
	@Autowired
	private ProjectRepository projectRepository;
	
	@Autowired
	private CustomerRepository crpo;
	
	//@Test
	void findAllTest() {
		repository.findAll();
	}
	
//	@Test
	public void lists(){
		List<Task> tasks = new ArrayList<>();
		projectRepository.findById(2).get().getTasks().forEach(r ->{
			tasks.add(r);
		});
	}
	
	//@Test
	public void insert() {
		Task t = new Task();
		//Customer c = projectRepository.findById(2).get().getRecruits().iterator().next().getMembers().iterator().next().getCustomer();
		Customer c = crpo.findById(3).get();
		Project p = projectRepository.findById(2).get();
//		c.setCustomerNo(3);
		t.setContent("오늘 날짜의 할일");
		t.setCustomer(c);
		t.setTaskStatus(2);
		p.getTasks().add(t);
		
		projectRepository.save(p);
	}
	
//	@Test
	public void delete() {
		
	}
	
	//상태변경
//	@Test
	public void update() {
		Task t = repository.findById(1).get();
		
		t.setTaskStatus(3);
		repository.save(t);
	}
	
	//내용수정
	@Test
	public void updateContent() {
		Task t = repository.findById(1).get();
		
		t.setContent("쏼라쏼라~");
		repository.save(t);
	}
	
	
	
	
}
