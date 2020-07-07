<%@page import="java.util.Properties"%>
<%@page import="javax.mail.Session"%>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.PasswordAuthentication"%>
<%@page import="javax.mail.internet.*"%>


<%
		final String username = "anirudhpsr1998";
		final String password = "94246747117";
		
		String fromEmail = "anirudhpsr1998@yahoo.com";
		String toEmail = "anirudhpsr@gmail.com";
		
		Properties properties = new Properties();
		properties.put("mail.smtp.auth","true");
		properties.put("mail.smtp.starttls.enable","true");
		properties.put("mail.smtp.host","smtp.mail.yahoo.com");
		properties.put("mail.smtp.port","587");
		
		Session mysession = Session.getInstance(properties, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username,password);
			}
		});
		
		MimeMessage msg = new MimeMessage(mysession);
		try
		{ 
		msg.setFrom(new InternetAddress(fromEmail));
		msg.addRecipient(Message.RecipientType.TO,new InternetAddress(toEmail));
		msg.setSubject("Subject Line");
		msg.setText("Email body text");
		Transport.send(msg);
		out.println("Sent Message");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}	
%>