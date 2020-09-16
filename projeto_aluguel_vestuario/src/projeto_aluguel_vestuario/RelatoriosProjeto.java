//Relatorios para listar clientes e seus dados, listar os funcionários em ordem alfabética,
//listar os itens cadastrados no banco de dados e inserir itens com interação com o usuário. 


package projeto_aluguel_vestuario;

public class RelatoriosProjeto {
	private static String cod_item;
	private static String tamanho;
	private static String titulo;
	private static String marca;
	private static String estado;
	private static String valor_diario;

	public static void main (String[] args) {
		BancoDeDados bancoDeDados = new BancoDeDados();
		bancoDeDados.conectar();
		if(bancoDeDados.estaConectado()) {
			//bancoDeDados.listarClientes();
			//bancoDeDados.listarFuncionarios();
			//bancoDeDados.inserirItem(cod_item, tamanho, titulo, marca, estado, valor_diario);
			//bancoDeDados.listarItens();
			bancoDeDados.desconectar();
		} else {
			System.out.println("Não foi possível conectar ao banco de dados.");
		}
	}

}
