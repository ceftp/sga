package br.com.sga.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

import br.com.sga.model.Produto;
import br.com.sga.util.ConnectionFactory;

public class ProdutoDao {

	private Connection connection;

	public ProdutoDao() {
		try {
			this.connection = (Connection) new ConnectionFactory()
					.getConnection();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public void salvar(Produto produto) {
		try {
			String sql = "INSERT INTO produto (nome, marca, codigo, precoCusto,	precoVenda, data, quantidade, imagem) VALUES (?,?,?,?,?,?,?,?)";
			PreparedStatement stmt = (PreparedStatement) connection
					.prepareStatement(sql);
			stmt.setString(1, produto.getNome());
			stmt.setString(2, produto.getMarca());
			stmt.setString(3, produto.getCodigo());
			stmt.setDouble(4, produto.getPrecoCusto());
			stmt.setDouble(5, produto.getPrecoVenda());
			stmt.setDate(6,new java.sql.Date(produto.getDataCompra().getTime()));
			stmt.setInt(7, produto.getQuantidade());
			stmt.setString(8, produto.getImagem());

			stmt.execute();
			stmt.close();

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public List<Produto> listar() {

		try {
			List<Produto> listaProduto = new ArrayList<Produto>();
			PreparedStatement stmt = (PreparedStatement) this.connection
					.prepareStatement("SELECT * FROM produto ORDER BY nome");

			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				listaProduto.add(montarObjeto(rs));
			}

			rs.close();
			stmt.close();
			connection.close();

			return listaProduto;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	private Produto montarObjeto(ResultSet rs) throws SQLException {

		Produto produto = new Produto();
		produto.setId(rs.getInt("id"));
		produto.setNome(rs.getString("nome"));
		produto.setCodigo(rs.getString("codigo"));
		produto.setMarca(rs.getString("marca"));
		produto.setPrecoCusto(rs.getDouble("precoCusto"));
		produto.setPrecoVenda(rs.getDouble("precoVenda"));
		produto.setDataCompra(rs.getDate("data"));
		produto.setQuantidade(rs.getInt("quantidade"));
		produto.setImagem(rs.getString("imagem"));

		return produto;

	}

	public void remover(Produto produto) {

		try {
			PreparedStatement stmt = (PreparedStatement) connection
					.prepareStatement("DELETE FROM produto WHERE id = ?");
			stmt.setLong(1, produto.getId());
			stmt.execute();
			stmt.close();
			connection.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}	public Produto buscarPorId(int id) {

		try {
		    PreparedStatement stmt = (PreparedStatement) connection.prepareStatement("SELECT * FROM produto WHERE id = ?");
		    stmt.setInt(1, id);
		    ResultSet rs = stmt.executeQuery();

		    Produto produto = null;
		    if (rs.next()) {
			produto = montarObjeto(rs);
		    }

		    rs.close();
		    stmt.close();
		    connection.close();
		    return produto;
		} catch (SQLException e) {
		    throw new RuntimeException(e);
		}
		
	}

	public void alterar(Produto produto) throws SQLException {

		try {
			PreparedStatement stmt = (PreparedStatement) connection.prepareStatement("UPDATE produto SET nome = ? , codigo = ? , marca = ? , precoCusto = ? , precoVenda = ? , data = ? , quantidade = ? , imagem = ?   WHERE id = ?");
			stmt.setString(1, produto.getNome());
			stmt.setString(2, produto.getMarca());
			stmt.setString(3, produto.getCodigo());
			stmt.setDouble(4, produto.getPrecoCusto());
			stmt.setDouble(5, produto.getPrecoVenda());
			stmt.setDate(6, new java.sql.Date(produto.getDataCompra().getTime()));
			stmt.setInt(7, produto.getQuantidade());
			stmt.setString(8, produto.getImagem());
			stmt.setInt(9, produto.getId());

			stmt.execute();
			stmt.close();
			connection.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}

	}
}
