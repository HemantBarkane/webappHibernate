<%@page import="webapp.Customer"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.boot.registry.StandardServiceRegistry"%>
<%@page import="org.hibernate.boot.registry.StandardServiceRegistryBuilder"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%
// use singleton pattern for getting session 
Configuration cfg = new Configuration();
cfg.configure();
StandardServiceRegistryBuilder ssrb = new StandardServiceRegistryBuilder();
ssrb.applySettings(cfg.getProperties());
StandardServiceRegistry ssr = ssrb.build();
SessionFactory sf = cfg.buildSessionFactory(ssr);
Session s = sf.openSession();
Transaction t = s.beginTransaction(); 

// perform CURD operations on customer

//response.sendRedirect("index.jsp");
 String name = request.getParameter("name");
 String age = request.getParameter("age");
 String dept = request.getParameter("dept");
 
 Customer cs = new Customer();
  cs.setAge(Integer.valueOf(age));
  cs.setDept(dept);
  cs.setName(name);
 
  s.save(cs);
  
 System.out.println(cs);
 t.commit();
 s.close();
 
 response.sendRedirect("index.jsp");
%>

