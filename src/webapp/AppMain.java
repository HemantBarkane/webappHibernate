package webapp;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

public class AppMain {
 public static void main(String a[]){

Configuration cfg = new Configuration();
cfg.configure();
StandardServiceRegistryBuilder ssrb = new StandardServiceRegistryBuilder();
ssrb.applySettings(cfg.getProperties());
StandardServiceRegistry ssr = ssrb.build();
SessionFactory sf = cfg.buildSessionFactory(ssr);
Session s = sf.openSession();
Transaction tx = s.beginTransaction();
 
 
  tx.commit();
  s.close();
  //s.addEventListeners(arg0);
 
 }
}
