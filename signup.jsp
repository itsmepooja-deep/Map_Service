<%@page import="java.sql.*"%>
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


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<% 
String name=request.getParameter("a");
String email=request.getParameter("e");
String mob=request.getParameter("m");
String add=request.getParameter("ad");
String pswd=request.getParameter("p");
//int status=0;
Class.forName("com.mysql.jdbc.Driver");
Connection co=DriverManager.getConnection("jdbc:mysql://localhost:3306/FinalYearProject","root","root");
Statement st=co.createStatement();
st.executeUpdate("insert into User_Info values('"+name+"','"+email+"','"+mob+"','"+add+"','"+pswd+"','"+1+"')");


String t=" User Information -> "+name+" : "+email+" : "+mob+" : "+add+"";
ByteArrayOutputStream ou= QRCode.from(t).to(ImageType.JPG).stream();
String t1="D:\\qrcode\\"+email+".jpg";
File f1=new File(t1);
FileOutputStream fos=new FileOutputStream(f1);
fos.write(ou.toByteArray());
fos.flush();




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
    message.setText("Dear user "+name+" register successfully");
    Transport.send(message);
    MimeMultipart multipart = new MimeMultipart("related");

    // first part (the html)
    BodyPart messageBodyPart = new MimeBodyPart();
   
    // second part (the image)
    messageBodyPart = new MimeBodyPart();
    DataSource fds = new FileDataSource(
       "D:\\qrcode\\"+email+".jpg");

    messageBodyPart.setDataHandler(new DataHandler(fds));
   

    // add image to the multipart
    multipart.addBodyPart(messageBodyPart);

    // put everything together
    message.setContent(multipart);

    Transport.send(message);

    System.out.println("Done");

} catch (MessagingException e) {
    e.printStackTrace();
    
}
%><p>
		<font soze="20">YOUR DATA HAS BEEN SAVED AND QRCODE GENERATED</font>
	</p>
	<br>
	<br>
	<br>
	<center>
		<script type="text/javascript">
alert('User Resgistered');
window.location = "index.html";
</script>
	</center>
</body>
</html>