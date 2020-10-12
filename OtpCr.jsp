<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.ByteArrayOutputStream"%>
<%@ page import=" java.io.File"%>
<%@ page import=" java.io.FileOutputStream"%>

<%@ page import="com.google.zxing.qrcode.QRCodeReader"%>

<%@ page import="net.glxn.qrgen.QRCode"%>

<%@ page import="net.glxn.qrgen.image.ImageType"%>
<%@ page import="javax.mail.*"%>
<%@ page import="javax.mail.internet.InternetAddress"%>
<%@ page import="javax.mail.internet.MimeMessage"%>
<%@ page import=" java.util.Properties"%>
<%@ page import="javax.mail.internet.MimeBodyPart"%>
<%@ page import="javax.mail.internet.MimeMultipart"%>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<% 
String numbers = "1234567890",o="";
Random random = new Random();
for(int i = 0; i< 4 ; i++) {
   o =o+ numbers.charAt(random.nextInt(numbers.length()));
}
String email=(String)session.getAttribute("email");

final String username = "vashishthabhishekcse2@gmail.com";
final String password = "@Abhi1998";

Properties prop = new Properties();
prop.put("mail.smtp.host", "smtp.gmail.com");
prop.put("mail.smtp.port", "587");
prop.put("mail.smtp.auth", "true");
prop.put("mail.smtp.starttls.enable", "true"); //TLS
prop.put("mail.smtp.ssl.trust","smtp.gmail.com");	
prop.put("mail.debug", "true");
%>
	<%
Session session1 = Session.getInstance(prop,
        new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username, password);
            }
        });

try {

    Message message = new MimeMessage(session1);
    message.setFrom(new InternetAddress("from@gmail.com"));
    message.setRecipients(
            Message.RecipientType.TO,
            InternetAddress.parse(email)
    );
    message.setSubject("Testing Gmail MapService");
    message.setText("Dear user  your otp is "+o+"");
    Transport.send(message);
   


    System.out.println("Done "+o);

} catch (MessagingException e) {
    e.printStackTrace();
}
String cvv =request.getParameter("cvv");
String exp_m=request.getParameter("exp_m"); 
String exp_y=request.getParameter("exp_y");
session.setAttribute("otp",o);  
session.setAttribute("c",cvv);  
session.setAttribute("m",exp_m);  
session.setAttribute("y",exp_y);  
%><script type="text/javascript">
alert('Otp send to your email id');
window.location = "Otp.jsp";
</script>
</body>
</html>