<%@page import="webapp.Customer"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.boot.registry.StandardServiceRegistry"%>
<%@page import="org.hibernate.boot.registry.StandardServiceRegistryBuilder"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="org.hibernate.Query"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%
   
   Configuration cfg = new Configuration();
   cfg.configure();
   StandardServiceRegistryBuilder ssrb = new StandardServiceRegistryBuilder();
   ssrb.applySettings(cfg.getProperties());
   StandardServiceRegistry ssr = ssrb.build();
   SessionFactory sf = cfg.buildSessionFactory(ssr);
   Session s = sf.openSession();
   Transaction t = s.beginTransaction();
   Query q = s.createQuery("from Customer");
   List<Customer> li = q.list();
   t.commit();
   s.close();
   sf.close();
   
   %> 
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table align="center" border="1">
<%for(Customer c:li){ %>
<tr>
<td><%=c.getName() %></td>
<td><%=c.getAge() %></td>
<td><%=c.getDept() %></td>
</tr>
<%} %>
</table>
</body>
</html>