package edu.kh.fin.band.chatting.controller;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import edu.kh.fin.band.chatting.model.service.ChatService;
import edu.kh.fin.band.chatting.model.service.TempUserService;
import edu.kh.fin.band.chatting.model.vo.ChatVo;
import edu.kh.fin.band.chatting.model.vo.TempUserVo;

@Controller
@SessionAttributes({"tempUser", "chatRoomList"})
public class ChattingController {
	
	List<ChatVo> roomList = new ArrayList<ChatVo>();
	static int roomNumber = 0;
	
	@Autowired
	TempUserService tempService;
	
	@Autowired
	ChatService service;
	
	
	@RequestMapping("/getRoom")
	public @ResponseBody List<ChatVo> getRoom(@RequestParam HashMap<Object, Object> params){
		return roomList;
	}
	
	@RequestMapping("/chat")
	public ModelAndView chat(Model model) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("chatting/chatting");
		
		
		return mv;
	}
	
	@RequestMapping("/room")
	public ModelAndView room() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("chatting/chatRoomList");
		return mv;
	}

	

	
	// 임시로 유저 정보 세션에 담는 로직
	@PostMapping("/tempUserSession")
	public String tempUser(@RequestParam int nowUser, Model model) {
		
		
		TempUserVo tempUser = tempService.tempUser(nowUser);

		List<ChatVo> onChatRoom = new ArrayList<ChatVo>();
		
		onChatRoom = service.onChatRoom(nowUser);
		
		
		model.addAttribute("tempUser",tempUser);
		
		model.addAttribute("chatRoomList", onChatRoom);
				
		return "room/roomMain";
	}
	
	
}
