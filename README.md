# <p align=center> **Mini-mundo – Projeto de Banco de Dados** </p>

Uma loja que realiza aluguéis de roupas para eventos (ternos, vestidos, entre outros itens) precisa de um sistema de gerenciamento de seu negócio. O cliente solicita ao funcionário qual item deseja alugar e por quanto tempo. O sistema armazenará do cliente alguns dados, como CPF, nome, sexo, endereço, telefone, e e-mail.

Um cliente pode alugar mais de uma peça. O funcionário verifica se o item solicitado está disponível pela loja. A peça terá alguns dados, como tamanho, marca, código, título e estado (danificado ou não-danificado – para conferência no ato da entrega). É determinado o valor do aluguel (dias de aluguel * valor diário), considerando o dia inicial do aluguel e o dia de entrega da peça.

No aluguel constará algumas informações como, data de aluguel, código do funcionário que realizou o aluguel, item, estado do item e o CPF do cliente que alugou a peça. Quando a entrega do item é realizada, é necessário realizar uma conferência, para verificar se houve ou não degradação do item.

Cliente (CPF, nome, sexo, endereco, telefone, e-mail)
Funcionario (cod_func, nome, endereco, cargo)
Item (cod_item, tamanho, titulo, marca, estado, valor_diario)
Aluguel (data_alug, cod_func, cod_item, CPF, estado)
Entrega (data_ent, cod_func, cod_item, CPF, estado) 
