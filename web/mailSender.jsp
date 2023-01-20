<%@ page import="java.util.Properties" %>
<%@ page import="jakarta.mail.*" %>
<%@ page import="jakarta.mail.internet.*" %>
<%@ page import="jakarta.activation.DataSource" %>
<%@ page import="jakarta.activation.FileDataSource" %>
<%@ page import="jakarta.activation.DataHandler" %>
<%--
  Created by IntelliJ IDEA.
  User: hibernaut
  Date: 20.01.2023
  Time: 04:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    class ClassAuthenticator extends Authenticator {

        final String username;
        final String applicationPassword;

        ClassAuthenticator(String username, String applicationPassword) {
            this.username = username;
            this.applicationPassword = applicationPassword;
        }

        public PasswordAuthentication getPasswordAuthentication() {
            return new PasswordAuthentication(username, applicationPassword);
        }
    }
%>

<%
    String result;
    String username = "john.smith@gmail.com";
    String applicationPassword = "dferkjklsdqwrety";
    String address1 = "sarah.parker@gmail.com";
    String address2 = "michael.andrews@gmail.com";

    Properties properties = new Properties();
    Authenticator authenticator = new ClassAuthenticator(username, applicationPassword);

    properties.put("mail.smtp.host", "smtp.gmail.com");
    properties.put("mail.smtp.socketFactory.port", "465");
    properties.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
    properties.put("mail.smtp.auth", "true");
    properties.put("mail.smtp.port", "465");

    Session mailSession = Session.getDefaultInstance(properties, authenticator);

    try {
        MimeMessage message = new MimeMessage(mailSession);
        Address[] addresses = {new InternetAddress(address1), new InternetAddress(address2)};

        message.setFrom(new InternetAddress(username));
        message.addRecipients(Message.RecipientType.TO, addresses);

        message.setSubject("This is the Subject Line!");
        message.setText("This is actual message!");
        message.setContent("<h1>This is actual message</h1>", "text/html");

        BodyPart messageBodyPart = new MimeBodyPart();
        messageBodyPart.setText("This is message body!");

        Multipart multipart = new MimeMultipart();
        multipart.addBodyPart(messageBodyPart);

        messageBodyPart = new MimeBodyPart();

        String fileName = "file.txt";
        DataSource source = new FileDataSource(fileName);
        messageBodyPart.setDataHandler(new DataHandler(source));
        messageBodyPart.setFileName(fileName);
        multipart.addBodyPart(messageBodyPart);

        message.setContent(multipart);
        Transport.send(message);

        result = "Sent message successfully....";

    }  catch (MessagingException e) {
        e.printStackTrace();
        result = "Error: unable to send message....";
    }
%>

<html>
<head>
    <title>Send Attachment Email using JSP</title>
</head>
<body>
<div style="text-align: center;">
    <h1>Send Attachment Email using JSP</h1>
</div>

<p align="center">
    <%out.println("Result: " + result + "\n");%>
</p>
</body>
</html>
