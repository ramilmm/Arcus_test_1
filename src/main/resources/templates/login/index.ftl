<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Arcus AUTH</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

    <link rel='stylesheet prefetch'
          href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900|RobotoDraft:400,100,300,500,700,900'>
    <link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>

    <link rel="stylesheet" href="../css/login_style.css">


</head>

<body>

<!-- Pen Title-->
<div class="pen-title">
</div>
<#if error??>
<div style="
    color: #ac2925;
    margin-left: 43%;
    margin-bottom: 12px;">${error}</
></div>
</#if>
<div class="container">
    <div class="card"></div>
    <div class="card">
        <h1 class="title">Вход</h1>
        <form method="POST" name="login" action="/login">
            <div class="input-container">
                <input name="username" type="text" id="log_username" required="required"/>
                <label for="log_username">E-mail</label>
                <div class="bar"></div>
            </div>
            <div class="input-container">
                <input name="password" type="password" id="log_password" required="required"/>
                <label for="log_password">Пароль</label>
                <div class="bar"></div>
            </div>
            <div class="button-container">
                <button><span>Войти</span></button>
            </div>
        </form>
    </div>
    <div class="card alt">
        <div class="toggle"></div>
        <h1 class="title">Регистрация
            <div class="close"></div>
        </h1>
        <form method="POST" name="register" action="/registration">
            <div class="input-container">
                <input name="username" type="text" id="reg_username" required="required"/>
                <label for="reg_username">E-mail</label>
                <div class="bar"></div>
            </div>
            <div class="input-container">
                <input name="name" type="text" id="reg_name" required="required"/>
                <label for="reg_name">Name</label>
                <div class="bar"></div>
            </div>
            <div class="input-container">
                <input name="password" type="password" id="reg_password" required="required"/>
                <label for="reg_password">Пароль</label>
                <div class="bar"></div>
            </div>
            <div class="input-container">
                <input name="confirmPassword" type="password" id="reg_confPassword" required="required"/>
                <label for="reg_confPassword">Подтвердите пароль</label>
                <div class="bar"></div>
            </div>
            <div class="button-container">
                <button><span>Зарегистрироваться</span></button>
            </div>
        </form>
    </div>
</div>
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

<script src="../js/login_js.js"></script>
</body>
</html>
