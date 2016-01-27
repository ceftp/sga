package br.com.sga.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

import br.com.sga.model.Fornecedor;
import br.com.sga.util.ConnectionFactory;

public class FornecedorDao {

	private Connection connection;

	public FornecedorDao() {
		try {
			this.connection = (Connection) new ConnectionFactory().getConnection();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public void salvar(Fornecedor fornecedor) {
		try {
			String sql = "INSERT INTO fornecedor (razaoSocial, cnpj, representante, telefone, endereco) VALUES (?,?,?,?,?)";
			PreparedStatement stmt = (PreparedStatement) connection.prepareStatement(sql);
			stmt.setString(1, fornecedor.getRazaoSocial());
			stmt.setString(2, fornecedor.getCnpj());
			stmt.setString(3, fornecedor.getRepresentante());
			stmt.setString(4, fornecedor.getTelefone());
			stmt.setString(5, fornecedor.getEndereco());

			stmt.execute();
			stmt.close();

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	public List<Fornecedor> listar() {

		try {
			List<Fornecedor> listafornecedor = new ArrayList<Fornecedor>();
			PreparedStatement stmt = (PreparedStatement) this.connection
					.prepareStatement("SELECT * FROM fornecedor ORDER BY nome");

			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				listafornecedor.add(montarObjeto(rs));
			}

			rs.close();
			stmt.close();
			connection.close();

			return listafornecedor;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	private Fornecedor montarObjeto(ResultSet rs) throws SQLException {

		Fornecedor fornecedor = new Fornecedor();
		fornecedor.setId(rs.getInt("id"));
		fornecedor.setRazaoSocial(rs.getString("razaoSocial"));
		fornecedor.setCnpj(rs.getString("cnpj"));
		fornecedor.setRepresentante(rs.getString("representante"));
		fornecedor.setEndereco(rs.getString("endereco"));

		return fornecedor;

	}

	public void remover(Fornecedor fornecedor) {

		try {
			PreparedStatement stmt = (PreparedStatement) connection
					.prepareStatement("DELETE FROM fornecedor WHERE id = ?");
			stmt.setInt(1, fornecedor.getId());
			stmt.execute();
			stmt.close();
			connection.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
