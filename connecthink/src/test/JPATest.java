package test;

import static org.junit.jupiter.api.Assertions.fail;

import java.util.List;
import java.util.Set;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.ContextHierarchy;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import com.connecthink.controller.CustomerController;
import com.connecthink.entity.Customer;
import com.connecthink.entity.Member;
import com.connecthink.entity.Project;
import com.connecthink.entity.Recruit;
import com.connecthink.repository.ProjectRepository;

import lombok.extern.log4j.Log4j;

@ExtendWith(SpringExtension.class)
//@ContextConfiguration(locations = "file:WebContent\\WEB-INF\\mvc-servlet.xml")
@ContextHierarchy({ @ContextConfiguration(locations = "file:WebContent\\WEB-INF\\spring\\root-context.xml"),
		@ContextConfiguration(locations = "file:WebContent\\WEB-INF\\spring\\appservlet\\servlet-context.xml") })
@Log4j
class JPATest {
	@Autowired
	private CustomerController controller;
	
	@Autowired
	private ProjectRepository projectRepository;
	
//	@Test
	public void controllerTest() {
		if(controller == null) fail("controller null");
	}
	
//	@Test
	public void findByEmailTest() {
		Customer c = controller.findByEmail("user2@naver.com");
	}

//	@Test
	public void saveTest() {
		Customer c = new Customer();
		c.setCustomerNo(202);
		c.setEmail("test03@gmail.com");
		controller.insert(c);
	}
	
//	@Test
	public void deleteTest() {
		int customerNo = 202;
		controller.remove(customerNo);
	}
	
//	@Test
	public void myProjectsAsLeaderTest() {
		projectRepository.findByManagerNo(2);
	}
	
//	@Test
	public void myProjectAsMemberTest() {
		List<Project> list = projectRepository.test(2);
		list.forEach(p -> {
			System.out.println("----프로젝트 번호 : " + p.getProjectNo());
			
			p.getRecruits().forEach(r -> {
				System.out.println("----모집 번호 : " + r.getRecruitNo());
				
				r.getMembers().forEach(m -> {
					System.out.println("멤버 번호 : " + m.getCustomer().getCustomerNo());
					
				});
			});
		});
	}
	
//	@Test
	@DisplayName("내가 지원한 프로젝트 목록")
	public void myAppliedProjectTest() {
		int memberNo = 101;
		List<Project> list = projectRepository.findMyApplication(memberNo);
		for(Project p : list) {
			System.out.println("프로젝트 명 : " + p.getTitle());
		}
	}
	
//	@Test
	@DisplayName("내가 초대받은 프로젝트 목록")
	public void myInvitedProjectTest() {
		int memberNo = 161;
		List<Project> list = projectRepository.findMyInvitation(memberNo);
		for(Project p : list) {
			System.out.println("프로젝트 명 : " + p.getTitle());
		}
	}
	
	@Test
	@DisplayName("내 프로젝트에 지원한 사람 목록")
	public void applicantOfMyProjectTest() {
		int managerNo = 2;
		List<Project> projectList = projectRepository.findByManagerNo(managerNo);
		for(Project p : projectList) {
			System.out.println("프로젝트 명 : " + p.getTitle());
			List<Recruit> recruitList = p.getRecruits();
			for(Recruit r : recruitList) {
				System.out.println("모집분야 : " + r.getPosition().getName());
				Set<Member> memberList = r.getMembers();
				for(Member m : memberList) {
					if (m.getEnterStatus()==0 && m.getInvited()==0) {
						System.out.println("지원자 : " + m.getCustomer().getName());
					}
				}
			}
		}
	}
	
//	@Test
	@DisplayName("내 프로젝트에 내가 초대한 사람 목록")
	public void guestOfMyProjectTest() {
		int managerNo = 2;
		List<Project> projectList = projectRepository.findByManagerNo(managerNo);
		for(Project p : projectList) {
			System.out.println("프로젝트 명 : " + p.getTitle());
			List<Recruit> recruitList = p.getRecruits();
			for(Recruit r : recruitList) {
				System.out.println("모집분야 : " + r.getPosition().getName());
				Set<Member> memberList = r.getMembers();
				for(Member m : memberList) {
					if (m.getEnterStatus()==0 && m.getInvited()==1) {
						System.out.println("초대받은 사람 : " + m.getCustomer().getName());
					}
				}
			}
		}
	}
}
