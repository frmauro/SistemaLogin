package br.com.SistemaLogin.conexao;

import java.sql.SQLException;

import br.com.SistemaLogin.login.Login;
import br.com.SistemaLogin.login.LoginDAO;

import java.sql.Connection;

public class Main {
	public static void main(String[] args) throws SQLException {
		Connection con = CriarConexao.getConexao();

		Login l = new Login();
		l.setUsuario("hugo");
		l.setSenha("123");
		
		LoginDAO dao = new LoginDAO(con);
		dao.adicionar(l);
	}
}
