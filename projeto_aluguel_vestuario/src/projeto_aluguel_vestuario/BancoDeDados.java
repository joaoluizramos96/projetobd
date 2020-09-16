package projeto_aluguel_vestuario;
import java.sql.Connection;
import java.util.Scanner;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class BancoDeDados {
	private Connection connection = null;
	private Statement statement = null;
	private ResultSet resultset = null;
	public String cod_item;
	public String tamanho;
	public String titulo;
	public String marca;
	public String estado;
	public String valor_diario;
	
	public void conectar() {
		String servidor = "jdbc:mysql://localhost:3306/projeto_aluguel_vestuario";
		String usuario = "root";
		String senha = "";
		String driver = "com.mysql.jdbc.Driver";
		try {
			Class.forName(driver);
			this.connection = DriverManager.getConnection(servidor, usuario, senha);
			this.statement = this.connection.createStatement();
		} catch (Exception e) {
			System.out.println("Erro: " + e.getMessage());
		}
	}
	
	public boolean estaConectado() {
		if(this.connection != null) {
			return true;
		} else {
			return false;
		}
	}
	
	public void listarClientes() {
		try {
			String query = "SELECT * FROM cliente;";
			this.resultset = this.statement.executeQuery(query);
			//this.statement = this.connection.createStatement();
			System.out.println("Relatório - Dados dos Clientes");
			System.out.println(" ");
			while(this.resultset.next()) {
				System.out.println("Nome do cliente: " + this.resultset.getString("nome") + " - Sexo: " + this.resultset.getString("sexo") + " - Telefone: " + this.resultset.getString("telefone") + " - E-mail: " + this.resultset.getString("email") + " - CPF: " + this.resultset.getString("CPF"));
			}
			} catch(Exception e) {
				System.out.println("Erro: " + e.getMessage());
			}
		}
	
	public void listarFuncionarios() {
		try {
			String query = "SELECT * FROM funcionario ORDER BY nome;";
			this.resultset = this.statement.executeQuery(query);
			//this.statement = this.connection.createStatement();
			System.out.println("Relatório - Nome dos funcionários (em ordem alfabética");
			System.out.println(" ");
			while(this.resultset.next()) {
				System.out.println("Funcionário: " + this.resultset.getString("nome"));
			}
			} catch(Exception e) {
				System.out.println("Erro: " + e.getMessage());
			}
		}
	
	public void listarItens() {
		try {
			String query = "SELECT * FROM item;";
			this.resultset = this.statement.executeQuery(query);
			System.out.println("Relatório - Itens da loja");
			System.out.println(" ");
			//this.statement = this.connection.createStatement();
			while(this.resultset.next()) {
				System.out.println("COD: " + this.resultset.getString("cod_item") + " - Tamanho: " + this.resultset.getString("tamanho") + " - Marca: " + this.resultset.getString("marca") + " - Título: " + this.resultset.getString("titulo") + " - Valor: " + this.resultset.getString("valor_diario"));
			}
			} catch(Exception e) {
				System.out.println("Erro: " + e.getMessage());
			}
		}
	
	public void inserirItem(String cod_item, String tamanho, String titulo, String marca, String estado, String valor_diario) {
		@SuppressWarnings("resource")
		Scanner scanner = new Scanner(System.in);
		System.out.print("Insira o código do item: ");
		cod_item = scanner.next();
		System.out.print("Insira o tamanho do item: ");
		tamanho = scanner.next();
		System.out.print("Insira o título do item: ");
		titulo = scanner.next();
		System.out.print("Insira a marca do item: ");
		marca = scanner.next();
		System.out.print("Insira o estado do item: ");
		estado = scanner.next();
		System.out.print("Insira o valor diário do aluguel do item: ");
		valor_diario = scanner.next();
		try {
			String query = "INSERT INTO item VALUES ('" + cod_item + "' , '" + tamanho + "' , '" + titulo + "' , '" + marca + "' , '" + estado + "' , '" + valor_diario + "');";
			//System.out.println(query);
			this.statement.executeUpdate(query);
		}
		catch(Exception e) {
			System.out.println("Erro: " + e.getMessage());
		}
	}
	
	public void relatorioItens(String consulta) {
		try {
			@SuppressWarnings("resource")
			Scanner entrada = new Scanner (System.in); 
			System.out.print("Insira o número da matrícula para ver a média geral a a situação do aluno: ");
			consulta = entrada.next();
			String query = "SELECT * FROM matricula WHERE n_matricula=" + consulta + ";";
			this.resultset = this.statement.executeQuery(query);
			while(this.resultset.next()) {
				System.out.println("Média Geral: " + this.resultset.getString("media_geral") + " - Situação: " + this.resultset.getString("situacao"));
			}
			} catch(Exception e) {
			System.out.println("Erro: " + e.getMessage());
		}
	}
	
	public void desconectar() {
		try {
			this.connection.close();
		}
		catch(Exception e) {
			System.out.println("Erro: " + e.getMessage());
		}	
	}
	}