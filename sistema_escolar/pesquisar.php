<?php
    session_start();
    if(isset($_SESSION['login_escola']) && $_SESSION['login_escola'] === TRUE){
?>
        <!DOCTYPE html>
        <html lang="pt-br">
        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <link rel="shortcut icon" type="imagex/png" href="Imagens/icon.ico">
            <link rel="stylesheet" href="Pasta_css/pesquisar.css">
            <title>PESQUISA</title>
        </head>
        <body>
            <div class="topo">
                <div class="tarja">
                    <img src="Imagens/tarja.jpg" alt="error" width="100%" height="150px">
                </div>
                <div class="logo">
                    <img src="Imagens/nav.jpg" alt="error" width="100%" height="200px">
                </div>
            </div>

            <center>
                <h1 class="listagem_text">INFORMAÇÕES DA EMPRESA</h1>
                <div class="back">
                    <a href="menu_escola.php">
                        <button>VOLTAR AO MENU</button>
                    </a>
                </div>

                <br>

                <table>
                    <div class="tabela_pesquisar">
                        <thead>
                            <tr>
                            <th scope="col">CNPJ</th>
                            <th scope="col">NOME</th>
                            <th scope="col">TELEFONE</th>
                            <th scope="col">E-MAIL</th>
                            <th scope="col">USUÁRIO</th>
                            <th scope="col">SENHA</th>
                            <th scope="col" colspan="2" style="text-align: center;">ARQUIVOS</th>
                            </tr>
                        </thead>
                        </div>

                        <?php
                            require_once "connect.php";
                            if ($_SERVER["REQUEST_METHOD"] == "POST") {
                                $cnpj = $_POST["cnpj"];
                                $sql_query = "SELECT * FROM empresas WHERE cnpj = $cnpj";
                                if ($result = $conn ->query($sql_query)) {
                                    while ($row = $result -> fetch_assoc()) { 
                                        $cnpj = $row['cnpj'];
                                        $nome = $row['nome'];
                                        $telefone = $row['telefone'];
                                        $email = $row['e_mail'];
                                        $usuario = $row['usuario'];
                                        $senha = $row['senha'];
                                    
                        ?>
                                <tr class="trow">
                                    <td><?php echo $cnpj; ?></td>
                                    <td><?php echo $nome; ?></td>
                                    <td><?php echo $telefone; ?></td>
                                    <td><?php echo $email; ?></td>
                                    <td><?php echo $usuario; ?></td>
                                    <td><?php echo $senha; ?></td>
                                    <td>
                                        <form action="arquivo.php?cnpj=<? echo $cnpj; ?>" method="post" enctype="multipart/form-data">
                                            <input type="file" name="file" id="file">
                                            <input type="submit" name="enviar" id="enviar" value="Criar Diretório">
                                        </form>
                                    </td>
                                </tr>
                        
                    </div>  
                    <?php
                            }    
                        }
                    }
                        $conn->close(); 
                    ?>      
                </table>
            </center>

        </body>
        </html>
<?php
    }else{
        header("location:index.php");
}
?>