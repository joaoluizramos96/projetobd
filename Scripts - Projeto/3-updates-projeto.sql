
update endereco_cliente set cidade='Recife', rua='Rua da Aurora', bairro='centro', numero='321' where CPF=123456789;
SELECT * FROM endereco_cliente;

update funcionario set cargo='Entregador' where cod_func=1011;
SELECT * FROM funcionario;

update item set titulo='Camisa', marca='Adidas', tamanho='M', valor_diario=19.99 where cod_item=4023;
SELECT * FROM item;