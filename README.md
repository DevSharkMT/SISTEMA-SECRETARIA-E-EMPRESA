# INFORMAÇÕES SOBRE CÓDIGO
* Código feito usando Html, Css, PHP, MySql.
* Conexão com Banco de Dados.
* Sistema de Login.
* Cadastro, Listagem, Atualização, Pesquisa e Exclusão (Sistema Crud).

# DEMANDA
A unidade SENAI Juiz de Fora CFP José Fagundes Netto está necessitando de uma demanda para auxiliar as empresas que possuem alunos com contrato de aprendizagem a monitorar a frequência destes alunos. Tal ação hoje é feita enviando um e-mail para cada empresa individualente, o que demanda muito tempo.
Seu objetivo é desenvolver uma solução em PHP que seja capaz o cadastro de cada empresa para que ela tenha o acesso a um arquivo gerado pela secretaria e este seja acessado por cada empresa de forma individual. É importante frisar que cada empresa pode ter vários alunos com contrato e este arquivo é gerado mensalmente. Quem envia o arquivo para o sistema é a secretaria da escola e a empresa acessa posteriormente este arquivo para poder gerar a folha de pagamento. Por questões de segurança cada empresa tem um único colaborador que acessa este arquivo e consulta as informações e para a secretaria da escola, são 2 funcionários com acessos distintos, porém com as mesmas funções de entrar no cadastro de cada empresa e enviar o arquivo gerado referente ao mês atual e para cada empresa.

# XAMP/MySQL Workbench
É necessário usar o XAMP e o MYSQL para usar o programa. <br>
Links: 
* https://dev.mysql.com/downloads/workbench/ <br>
* https://www.apachefriends.org/pt_br/index.html

# BANCO DE DADOS
* Será necessário criar um banco de dados com o nome: sistema_secretaria <br>
![create](https://github.com/DevSharkMT/SISTEMA-SECRETARIA-E-EMPRESA/assets/155767351/178bcf54-fd38-4714-841b-d1d675a74e21)
<h2></h2>

* Após a criação, baixe o arquivo .sql e importe ele dentro deste banco no PhpMyAdmin: <br>
![import](https://github.com/DevSharkMT/SISTEMA-SECRETARIA-E-EMPRESA/assets/155767351/b0e55154-4fd9-4418-94b8-d7992fdbd4ec)
<h2></h2>

* As tabelas serão importadas automaticamente, possuindo informações de uma empresa fictícia e de um usuário de secretaria fictício <br>
![database](https://github.com/DevSharkMT/SISTEMA-SECRETARIA-E-EMPRESA/assets/155767351/2f806bbf-2338-4cf5-b450-2463a8383a24)
<h2></h2>

# INFORMAÇÕES ADICIONAIS
* Código foi passado para minha turma de desenvolvimento de sistemas, como uma demanda real, pois a secretaria queria trocar o sistema por estar muito antigo.
* Segundo código feito usando HTML, CSS, PHP e MYSQL.
* Não foi passado uma modelagem pré definida, porém o sistema deveria possuir uma interface simples com as cores correspondentes a instituição. 

