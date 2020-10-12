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
<%@ page import=" javax.activation.DataHandler"%>
<%@ page import=" javax.activation.DataSource"%>
<%@ page import=" javax.activation.FileDataSource"%>
<%@ page import="javax.mail.internet.MimeBodyPart"%>
<%@ page import="javax.mail.internet.MimeMultipart"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>




<%
String name=(String)session.getAttribute("name");
System.out.print(name);
System.out.print("..............");
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
    message.setSubject(" MapService");
    message.setText("Your Invoice");
    MimeMultipart multipart = new MimeMultipart("related");

    // first part (the html)
    BodyPart messageBodyPart = new MimeBodyPart();
    

   
   
    messageBodyPart = new MimeBodyPart();
    DataSource fds = new FileDataSource(
       "D:\\invoice\\"+name+".pdf");

    messageBodyPart.setDataHandler(new DataHandler(fds));
    messageBodyPart.setFileName("D:\\invoice\\"+name+".pdf");

    // add image to the multipart
    multipart.addBodyPart(messageBodyPart);

    // put everything together
    message.setContent(multipart);

    Transport.send(message);

    System.out.println("Done");
    session.removeAttribute("i");
    session.removeAttribute("l");

} catch (MessagingException e) {
    e.printStackTrace();
    
}

%>
<script>
window.alert("Invoice is send to your email");
window.location="index.html";

</script>
</body>
</html>