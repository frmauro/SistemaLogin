package br.com.SistemaLogin.login;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;





public class LoginDAO {

	  private Connection con;

	public LoginDAO(Connection con) {
		this.con = con;
	}
	
	public void adicionar(Login l) throws SQLException{
		String sql = "insert into login(usuario, senha)values(?,?)";
		PreparedStatement stmt = con.prepareStatement(sql);

		try {
			stmt.setString(1, l.getUsuario());
			stmt.setString(2, l.getSenha());
			
			stmt.execute();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			stmt.close();
			con.close();
		}
	}
	  
	  
	
}
