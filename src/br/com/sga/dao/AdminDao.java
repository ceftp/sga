package br.com.sga.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

import br.com.sga.model.Admin;
import br.com.sga.model.Fornecedor;
import br.com.sga.util.ConnectionFactory;

public class AdminDao {

	private Connection connection;

	public AdminDao() {
		try {
			this.connection = (Connection) new ConnectionFactory().getConnection();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		}

	public Admin Logar( String nome, String senha) {

		try {
			PreparedStatement stmt = (PreparedStatement) connection	.prepareStatement("SELECT * FROM admin WHERE nome = ?, senha = ?");
			stmt.setString(1, nome);
			stmt.setString(2, senha);
			ResultSet rs = stmt.executeQuery();

			Admin admin = null;
			if (rs.next()) {
				admin = montarObjeto(rs);
			}

			rs.close();
			stmt.close();
			connection.close();
			return admin;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

		private Admin montarObjeto(ResultSet rs) throws SQLException {

			Admin admin = new Admin();
			admin.setId(rs.getInt("id"));
			admin.setNome(rs.getString("nome"));
			admin.setSenha(rs.getString("senha"));

			return admin;

		}
		
		
	}

