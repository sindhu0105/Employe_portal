package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.Model.EmpModel;

public class EmpDAO {
	String status="fail";
	public String insertEmp(EmpModel em) {
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/batch49","root","root");
			PreparedStatement ps = con.prepareStatement("insert into e1 values(?,?,?,?)");
			ps.setInt(1,em.getEid());
			ps.setString(2, em.getEname());
			ps.setString(3, em.getMail());
			ps.setString(4, em.getPassword());
			int i = ps.executeUpdate();
			if(i>0) {
				status="Success";
				System.out.println(status);
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return status;

			}
	public EmpModel Authentication(String mail,String pw){
	
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/batch49","root","root");
			PreparedStatement ps1 = con.prepareStatement("select * from e1 where mail=? and  password=?");
			ps1.setString(1, mail);
			ps1.setString(2, pw);
			ResultSet rs = ps1.executeQuery();
			while(rs.next()) {
				
				 return new EmpModel(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4));
				
				//status="Success";
			}
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		return null;
		
	}
	public List<EmpModel> getAllEmp(){
		List<EmpModel> list = new ArrayList();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/batch49","root","root");
			PreparedStatement ps = con.prepareStatement("select * from e1");
			ResultSet rs= ps.executeQuery();
			while(rs.next()) {
				 EmpModel e = new EmpModel(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4));
				 list.add(e);
			}
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	public String delete( int id) {
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/batch49","root","root");
			PreparedStatement ps = con.prepareStatement("delete from e1 where eid=?");
			ps.setInt(1, id);
			int i= ps.executeUpdate();
			if(i>0) {
				status="Success";
			}
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}
	public EmpModel getEmpById(int id) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/batch49","root","root");
			PreparedStatement ps = con.prepareStatement("select * from e1 where eid=?");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				return  new EmpModel(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4));
			}
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		return null;
	}
	public boolean updateEmpDetails(EmpModel em) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/batch49","root","root");
			PreparedStatement ps = con.prepareStatement("update e1 set ename=?,mail=?,password=? where eid=?");
			ps.setString(1, em.getEname());
			ps.setString(2, em.getMail());
			ps.setString(3, em.getPassword());
			ps.setInt(4,em.getEid());
			int i = ps.executeUpdate();
			if(i>0) {
				return true;
			}
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		return false;
		
	}
	
	
}


 