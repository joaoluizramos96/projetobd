use projeto_aluguel_vestuario;

# Exibindo o total de clientes cadastrados
select count(nome) from cliente;

# Exibindo os itens cadastrados
select (titulo) from item;

# Cáculo da média dos valores do aluguel dos itens
select avg(valor_diario) from item;

# Verificando o valor do aluguel mais caro
select max(valor_diario) from item;

# Verificando o valor do aluguel mais barato
select min(valor_diario) from item;

# Analisando os produtos acima de R$ 35,00
select titulo from item where valor_diario > 35;

# Selecionando as peças que cujo aluguel custa entre R$ 30,00 e R$ 40,00
select titulo from item where valor_diario between 30 and 40;

# Exibindo funcionários que cujo nome inicia com a letra J
select nome from funcionario where nome like "J%";

# Dando desconto de 10% nos aluguéis
select titulo, cod_item, valor_diario, (valor_diario - (valor_diario * 0.1)) as valor_com_desconto from item;
