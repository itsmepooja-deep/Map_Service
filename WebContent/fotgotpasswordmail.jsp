<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="net.glxn.qrgen.image.ImageType"%>
<%@ page import="javax.mail.*"%>
<%@ page import="javax.mail.internet.InternetAddress"%>
<%@ page import="javax.mail.internet.MimeMessage"%>
<%@ page import=" java.util.Properties"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


	<% 
String email=request.getParameter("form-username");
session.setAttribute("mail", email);
System.out.println(email);


final String username = "vashishthabhishekcse2@gmail.com";
final String password = "@Abhi1998";

Properties prop = new Properties();
prop.put("mail.smtp.host", "smtp.gmail.com");
prop.put("mail.smtp.port", "587");
prop.put("mail.smtp.auth", "true");
prop.put("mail.smtp.starttls.enable", "true"); //TLS
prop.put("mail.smtp.ssl.trust","smtp.gmail.com");	
prop.put("mail.debug", "true");

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
            InternetAddress.parse(email));
    message.setSubject("Testing Gmail MapService");
    message.setText("update your password on this link \n http://localhost:8080/performanceEvalu/updatepassword.html");
    Transport.send(message);
    System.out.println("Done");
    
} catch (MessagingException e) {
    e.printStackTrace();
}
%><script type="text/javascript">
alert('link send to your email id');
window.location = "index.html";
</script>
</body>
</html>