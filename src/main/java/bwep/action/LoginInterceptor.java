package bwep.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;


public class LoginInterceptor extends HandlerInterceptorAdapter {

   @Override
   public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
         throws Exception {
      // 먼저 세션에 정보가 저장이 되었는지 만약 없다면 세션을 생성해주자!
      HttpSession session = request.getSession(true);
      
      // 사용자가 로그인이 될때 세션에 log라는 이름으로 사용자의 닉네임을 가지고 있자!
      Object obj = session.getAttribute("log");
      String nick = (String)obj;
      if(nick == null) {
         // 로그인이 되지 않은 상태이다. 그럼 로그인 페이지로 이동하자!
         response.sendRedirect("redircet:/");
         return false;
      }
      // 현재 로그인이 된 상태
      if(nick == null) {
    	  // 혹시 모르는 이상상태 대비
    	  session.removeAttribute("log");
    	  response.sendRedirect("redircet:/");
      }
      return true; // 원래 하던일을 그대로 수행하게 해준다.
   }
   
}