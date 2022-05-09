package com.dilip.crud;
import java.sql.Connection;
import java.sql.PreparedStatement;
public class CustomerDAO {
 static Connection conn;
 static PreparedStatement pst;
   public static int insertCustomer(CustomerBean u) {
	   int status=0;
	   try
	   {
		   conn=ConnectionProvider.getCon();
		   pst= conn.prepareStatement("insert into customer (custid,custname,stdnum,stdadd,parname,parnum,std) values(?,?,?,?,?,?,?)");
		   pst.setInt(1, u.getCustid());
		   pst.setString(2, u.getCustname());
		   pst.setString(3, u.getStdnum());
		   pst.setString(4, u.getStdadd());
		   pst.setString(5, u.getParname());
		   pst.setString(6, u.getParnum());
		   pst.setInt(7, u.getStd());
		   status=pst.executeUpdate();
		   conn.close();
	   }catch(Exception ex)
	   {
		   System.out.println(ex);
	   }

	   return status;
   }
	public static int deleteStudent(CustomerBean u) {
		int status=0;
		try
		{
			conn=ConnectionProvider.getCon();
			pst= conn.prepareStatement("delete from customer where custid=?");
			pst.setInt(1, u.getCustid());
			status=pst.executeUpdate();
			conn.close();
		}catch(Exception ex)
		{
			System.out.println(ex);
		}

		return status;
	}
	public static int updateStudent(CustomerBean u) {
		int status=0;
		try
		{
			conn=ConnectionProvider.getCon();
			pst= conn.prepareStatement("update customer set custname=?,stdadd=?,stdnum=?,parname=?,parnum=?,std=? where custid=?");
			pst.setString(1, u.getCustname());
			pst.setString(2, u.getStdadd());
			pst.setString(3, u.getStdnum());
			pst.setString(4, u.getParname());
			pst.setString(5, u.getParnum());
			pst.setInt(6, u.getStd());
			pst.setInt(7, u.getCustid());

			status=pst.executeUpdate();
			conn.close();
		}catch(Exception ex)
		{
			System.out.println(ex);
		}

		return status;
	}



}
