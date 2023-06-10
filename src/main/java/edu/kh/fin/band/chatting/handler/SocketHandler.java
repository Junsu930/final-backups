package edu.kh.fin.band.chatting.handler;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.stereotype.Component;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

@Component
public class SocketHandler extends TextWebSocketHandler {
	
	// HashMap<String, WebSocketSession> sessionMap = new HashMap<>(); //웹소켓 세션을 담아둘 맵
	
	// 웹 소켓 세션을 담을 리스트
	List<HashMap<String,Object>> rls = new ArrayList<>();
	
	@Override
	public void handleTextMessage(WebSocketSession session, TextMessage message) {
		//메시지 발송
		String msg = message.getPayload();
		
		JSONObject obj = JsonToObjectParser(msg);
		
		String rN = (String)obj.get("chatRoomNo");
		System.out.println("접속한 방 번호"+ rN);
		
		HashMap<String, Object> temp = new HashMap<String, Object>();
		
		// 세션에 방이 저장되어 있으면
		if(rls.size() > 0) {
			for(int i = 0; i<rls.size(); i++) {
				String roomNo = (String)rls.get(i).get("chatRoomNo"); // 세션 리스트에 저장된 방 가져옴
				if(roomNo.equals(rN)) { // 같은 방이 존재한다면
					temp = rls.get(i); // 해당 방의 모든 정보가져옴
					break;
				}
			}
			
			for(String key : temp.keySet()) { // 해당 방만 찾는다
				if(key.equals("chatRoomNo")) {
					continue; // 방 번호는 건너뛰기
				}
				WebSocketSession wss = (WebSocketSession)temp.get(key);
				if(wss != null) {
					
					try {
						wss.sendMessage(new TextMessage(obj.toJSONString()));
					}catch(Exception e) {
						e.printStackTrace();
					}
					
				}
			}
		}
	}
	
	// json파일 파싱하는 함수
	private static JSONObject JsonToObjectParser(String jsonStr) {
		JSONParser parser = new JSONParser();
		JSONObject obj = null;
		try {
			obj = (JSONObject) parser.parse(jsonStr);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return obj;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		//소켓 연결
		super.afterConnectionEstablished(session);
		boolean flag = false;
		
		System.out.println("Session 정보 : " + session);
		
		String url = session.getUri().toString();
		System.out.println("url : "+ url );
		
		String roomNo = url.split("/chatting/")[1];
		int idx = rls.size(); // 방 사이즈 조사
		
		System.out.println( "해쉬맵에 들어간 방 세션" +idx);
		
		if(rls.size() > 0 ) {
			for(int i = 0; i<rls.size(); i++) {
				String rN = (String)rls.get(i).get("chatRoomNo");
				if(rN.equals(roomNo)) { // 같은 방이 존재하면
					flag = true;
					idx = i;
					break;
				}
			}
			
		}
		if(flag) { // 만약 방이 존재하면  세션만 추가
			HashMap<String,Object> map = rls.get(idx);
			map.put(session.getId(), session);
			
		}else { // 최초 생성하는 방이면 방 번호와 세션 추가
			HashMap<String,Object> map = new HashMap<String, Object>();
			map.put("chatRoomNo", roomNo);
			map.put(session.getId(), session);
			rls.add(map);
			
		}
		
		System.out.println("등록된 세션들 : " + rls);
		

		// 세션 등록 끝나면 세션 id값 발송
		JSONObject obj = new JSONObject();
		obj.put("type", "getId");
		obj.put("sessionId", session.getId());
		session.sendMessage(new TextMessage(obj.toJSONString()));
	}
	
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		//소켓 종료
		if(rls.size()>0) {
			for(int i=0; i<rls.size(); i++) {
				rls.get(i).remove(session.getId());
			}
		}
		super.afterConnectionClosed(session, status);
	}
}