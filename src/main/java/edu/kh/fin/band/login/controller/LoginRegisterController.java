package edu.kh.fin.band.login.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import edu.kh.fin.band.login.model.service.LoginService;
import edu.kh.fin.band.login.model.vo.User;

@Controller
@RequestMapping("/login")
public class LoginRegisterController {
	
	private Logger logger = LoggerFactory.getLogger(LoginRegisterController.class);
	
	@Autowired 
	private LoginService service;
	
	
	@GetMapping("/login")
	public String loginController() {
		
		return "user/LoginRegister";
		
	}
	
	@PostMapping("/login")
	public String login(@ModelAttribute User inputUser
						, Model model
						, RedirectAttributes ra
						, HttpServletResponse resp 
						, HttpServletRequest req
						, @RequestParam(value="saveId", required = false) String saveId ) {
		
		logger.info("�α��� ����");
		
		User loginUser = service.login(inputUser);
		
		if(loginUser !=null) { // �α��� ������
			model.addAttribute("loginUser", loginUser);
			
			//��Ű ����
			Cookie cookie = new Cookie("saveId", loginUser.getUserEmail());
			
			if(saveId !=null) { // ���̵� ���� üũ��
				
				cookie.setMaxAge(60 * 60 * 24 * 365); // 1��
				
			} else { // üũ ���� ��
				cookie.setMaxAge(0); // ��Ű ����
			}
			
			// ��Ű ���� ��� ����
			cookie.setPath(req.getContextPath());
			
			// ��Ű�� ���� �� Ŭ���̾�Ʈ���� ����
			resp.addCookie(cookie);
			
			
		} else { //�α��� ���� 
			
			ra.addFlashAttribute("message", "���̵� �Ǵ� ��й�ȣ�� Ʋ��");
			
		}
		
		
		return"redirect:/";
		
	}

}