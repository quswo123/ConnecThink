package com.connecthink.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.connecthink.entity.Customer;
import com.connecthink.entity.Member;
import com.connecthink.entity.Message;
import com.connecthink.entity.Task;
import com.connecthink.service.BoardService;

@Controller
public class BoardController {

   @Autowired
   private BoardService service;
   
   @RequestMapping("/board")
   ModelAndView board(HttpServletRequest req,@RequestParam("project_no") int project_no) {
      ModelAndView mv = new ModelAndView();
      
      int customer_no = 0;
      
      List<Task> taskList = tList(project_no);
      //Http session 에 저장할 userid 대체용
      for(int i = 0; i < 100; i++) {

         double dValue = Math.random();

         customer_no = (int)(dValue * 10);
         
      }
      	customer_no = (customer_no == 0) ? 1 : customer_no;
        HttpSession session = req.getSession();        
        session.setAttribute("LoginInfo",customer_no);
        mv.setViewName("board");
        mv.addObject("project_no",project_no);
        mv.addObject("list", taskList);
		return mv;
	}
	
	@RequestMapping("/board/lookUpMember")
	ModelAndView lookUpMember(int product_no) {
		ModelAndView mv = new ModelAndView();
		List<Member> members = service.lookUpMember(product_no);
		
		mv.addObject("members",members);
		return mv;
	}
	
	public List<Message> lookUpMsg(int project_no){
		return service.lookUpMsg(project_no);
	}
	
	public void sendMsg(int project_no, List<Message> msgs) {
		service.sendMessage(project_no, msgs);
	}
	
	@RequestMapping("/addTask")
	public ModelAndView insert(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		HttpSession session = request.getSession();
		Integer id = (Integer) session.getAttribute("LoginInfo");
		Customer c = new Customer();
		c.setCustomerNo(id);
		Integer status = Integer.parseInt(request.getParameter("status"));
		String content = request.getParameter("content");
		Integer pNo = Integer.parseInt(request.getParameter("project_no"));
		
		Task task = new Task();
		
		task.setCustomer(c);
		task.setTaskStatus(status);
		task.setContent(content);
		service.add(task, pNo);
		mav.setViewName("board");
		
		return mav;
	}
	
	@RequestMapping("/taskList")
	@ResponseBody
	public List<Task> tList(int project_no) {
		
		List<Task> list = service.lookUpTask(project_no);

		return list;
	}
	
	/*
	 * 내용변경
	 */
	@RequestMapping("/updateContent")
	public ResponseEntity<String> updateContent(HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		Integer id = (Integer) session.getAttribute("LoginInfo");
		
		String content = request.getParameter("content");
		Integer taskNo = Integer.parseInt(request.getParameter("taskNo"));
		Task task = new Task();
		Customer c = new Customer();
		c.setCustomerNo(id);
		
		task.setCustomer(c);
		task.setTaskNo(taskNo);
		task.setContent(content);
		
		service.updateByComment(task);
		
		return ResponseEntity.status(HttpStatus.OK).body("success");
	}
	
	/*
	 * 상태변경
	 */
	@RequestMapping("/updateStatus")
	public ModelAndView updateState(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		Task task = new Task();
		
		Integer status = Integer.parseInt(request.getParameter("status"));
		Integer taskNo = Integer.parseInt(request.getParameter("taskNo"));
		
		
		task.setTaskNo(taskNo);
		task.setTaskStatus(status);
		
		service.updateByState(task);
		mav.setViewName("board");
		return mav;
	}
	
	/*
	 * 삭제하기
	 */
	@RequestMapping("/deleteTask")
	public ResponseEntity<String> deleteTask(HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		Integer id = (Integer) session.getAttribute("LoginInfo");
		Integer taskNo = Integer.parseInt(request.getParameter("taskNo"));
	
		System.out.println("asdasdasdasdasd" + id);
		System.out.println(taskNo);
		
		service.removeByTask(id, taskNo);
		
		return ResponseEntity.status(HttpStatus.OK).body("success");
	}
	
	
	/*
	 * 프로젝트 종료하기
	 */
	@RequestMapping("/endProject")
	public ModelAndView endProject(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		
		Integer pNo = Integer.parseInt(request.getParameter("project_no"));
		
		service.updateProject(pNo);
		mav.setViewName("index");
		return mav;
	}
	
	/*
	 * 프로젝트 탈퇴하기
	 */
	@RequestMapping("endMyProject")
	public ModelAndView endMyProject(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		
		service.exitProject(103);
		return mav;
		
	}
	
	
}
