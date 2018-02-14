package com.accp.springmvc.controller;

import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.PrintWriter;

import javax.imageio.ImageIO;  
import javax.servlet.ServletOutputStream;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
import javax.servlet.http.HttpSession;  
  
import org.springframework.beans.factory.annotation.Autowired;  
import org.springframework.stereotype.Controller;  
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;  
  
import com.google.code.kaptcha.Constants;  
import com.google.code.kaptcha.Producer;  
  
/** 
 * 防止Captcha机器人登陆 
 * @author liuwang 
 * 
 */  
@Controller  
@RequestMapping("/kaptcha/*")  
public class CaptchaController {  
      
    @Autowired  
    private Producer captchaProducer = null;  
  
    @RequestMapping  
    public ModelAndView getKaptchaImage(HttpServletRequest request, HttpServletResponse response) throws Exception {  
        HttpSession session = request.getSession();  
        String code = (String)session.getAttribute(Constants.KAPTCHA_SESSION_KEY);  
        System.out.println("******************验证码是: " + code + "******************");  
          
        response.setDateHeader("Expires", 0);  
          
        // Set standard HTTP/1.1 no-cache headers.  
        response.setHeader("Cache-Control", "no-store, no-cache, must-revalidate");  
          
        // Set IE extended HTTP/1.1 no-cache headers (use addHeader).  
        response.addHeader("Cache-Control", "post-check=0, pre-check=0");  
          
        // Set standard HTTP/1.0 no-cache header.  
        response.setHeader("Pragma", "no-cache");  
          
        // return a jpeg  
        response.setContentType("image/jpeg");  
          
        //生成验证码文本
        String capText = captchaProducer.createText();  
          
        // store the text in the session  
        session.setAttribute(Constants.KAPTCHA_SESSION_KEY, capText);  
          
        //利用生成的字符串构建图片 
        BufferedImage bi = captchaProducer.createImage(capText);  
        ServletOutputStream out = response.getOutputStream();  
          
        // write the data out  
        ImageIO.write(bi, "jpg", out);  
        try {  
            out.flush();  
        } finally {  
            out.close();  
        }  
        return null;  
    }  
    
    
    
    
        /*             
        *                前端输入的验证码与生成的对比
        * @author         ccg
        * @param         request
        * @param         response
        * @param         captchaCode
        * Created        2017年1月17日 下午5:34:23
        */
       @RequestMapping("checkCaptchaCode")
       public void checkCaptchaCode(HttpServletRequest request, HttpServletResponse response,@RequestParam("captchaCode") String captchaCode){
           System.out.println("页面输入验证码===="+captchaCode);
           
           response.setCharacterEncoding("UTF-8");
           response.setHeader("Pragma", "No-cache");
           response.setHeader("Cache-Control", "no-cache");
           response.setDateHeader("Expires", 0);
           
           String generateCode =(String) request.getSession().getAttribute(Constants.KAPTCHA_SESSION_KEY);
           String result = "";
           if(generateCode.equals(captchaCode)){
               result = "验证成功";
           }else{
               result = "输入错误";
           }
           PrintWriter out = null;
           try {
               out = response.getWriter();
           } catch (IOException e) {
               e.printStackTrace();
           }
           out.print(result);
           out.flush();
       }
}  