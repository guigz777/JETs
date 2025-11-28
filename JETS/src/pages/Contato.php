<?php
$mensagemEnviada = false;
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nome = htmlspecialchars($_POST["name"]);
    $email = htmlspecialchars($_POST["email"]);
    $mensagem = htmlspecialchars($_POST["message"]);
    $data = date("d/m/Y H:i:s");

    $linha = "[$data] Nome: $nome | Email: $email | Mensagem: $mensagem" . PHP_EOL;
    file_put_contents("contatos.txt", $linha, FILE_APPEND);

    $mensagemEnviada = true;
}
?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contato - Loja de Roupas Jets</title>
    <link rel="stylesheet" href="../assets/css/style.css">
    <link rel="stylesheet" href="../assets/css/stylecontato.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
</head>
<body>
    <header id="header-placeholder"></header>
    <main>
        <section class="contact-hero">
            <div class="contact-hero-content">
                <h1 class="contact-hero-title">Fale com a Jets</h1>
                <p class="contact-hero-desc">
                    Tem dúvidas, sugestões ou precisa de ajuda? Nossa equipe está pronta para te atender!
                </p>
                <ul class="contact-info">
                    <li><i class="bi bi-envelope"></i> <a href="mailto:contatos.JETs@gmail.com" style="color: black;" target="_blank">contatos.JETs@gmail.com</a></li>
                    <li><i class="bi bi-telephone"></i> <a href="https://wa.me/31986801621" style="color: black;" target="_blank"> (31) 98680-1621</a></p>
                    <li><i class="bi bi-geo-alt"></i> <a href="https://maps.app.goo.gl/xsf9nGrh1V7VMmfL9" style="color: black;" target="_blank">São Domingos, Coronel Fabriciano - MG</a></li>
                </ul>
            </div>
        </section>
        <section class="contact-form-wrapper">
            <h2>Formulário de Contato</h2>
            <?php if ($mensagemEnviada): ?>
                <div class="mensagem-sucesso" style="color:green; margin-bottom:20px;">
                    Obrigado pelo contato, <?php echo $nome; ?>! Sua mensagem foi enviada com sucesso.
                </div>
            <?php endif; ?>
            <form action="" method="post">
                <label for="name">Nome</label>
                <input type="text" id="name" name="name" required placeholder="Seu nome">

                <label for="email">Email</label>
                <input type="email" id="email" name="email" required placeholder="seu@email.com">

                <label for="message">Mensagem</label>
                <textarea id="message" name="message" required placeholder="Digite sua mensagem"></textarea>

                <button type="submit">Enviar</button>
            </form>
        </section>
    </main>
    <footer id="footer-placeholder"></footer>
    <script src="../scripts/main.js"></script>
    <script>
        fetch('../components/Header.html')
          .then(res => res.text())
          .then(data => {
            document.getElementById('header-placeholder').innerHTML = data;
          });

        fetch('../components/Footer.html')
          .then(res => res.text())
          .then(data => {
            document.getElementById('footer-placeholder').innerHTML = data;
          });
    </script>
</body>
</html>