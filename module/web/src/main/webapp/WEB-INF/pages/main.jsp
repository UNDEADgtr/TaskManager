<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Task Manager">
    <meta name="author" content="UNDEADgtr">

    <title>Task Manager</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
</head>

<body>

<nav class="navbar navbar-fixed-top navbar-inverse" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="/">Главная</a>
        </div>
    </div>
</nav>

<div class="container">

    <div class="jumbotron task-title">
        <h1>Task Manager!</h1>

        <p>Менеджер управления задачами. Тестовое задание подготовлено Хроловичем Дмитрием.</p>
    </div>

    <hr>

    <div class="row">
        <div id="tasks" class="col-md-offset-3 col-md-6 task-feature">
            <div class="thumbnail">
                <div class="caption">
                    <h3 class="text-center">Добавить новую задачу</h3>

                    <div class="form-group text-center">
                        <input id="new-task-input" class="form-control" type="text"
                               style="width: 80%; display: inline" placeholder="Новая задача">
                        <button id="new-task" type="button" class="btn btn-primary">+</button>
                    </div>

                    <p>Работа растягивается на все отведенное для нее время. (c)Task Manager</p>

                    <ul id="task-list" class="list-group">
                        <li class="list-group-item">

                            <p> Cras justo odio</p>

                            <button type="button" class="btn btn-danger btn-xs pull-right remove">x</button>

                            <select class="select-box pull-right">
                                <option value="waiting">Ожидание</option>
                                <option value="during">В процессе</option>
                                <option value="completed">Завершен</option>
                            </select>

                        </li>
                    </ul>
                </div>
            </div>
        </div>

    </div>

    <hr>

    <div class="row">
        <div class="col-md-6">

            <h3>Estimation</h3>

            <ul class="list-group">
                <li class="list-group-item">
                    Общая архитектура программы, подбор библиотек, Rest сервисы: 30 мин
                </li>
                <li class="list-group-item">
                    Верстка страницы, подбор элементов: 15 мин
                </li>
                <li class="list-group-item">
                    Ваполнение задания на Backbone: 2 часа
                </li>
                <li class="list-group-item">
                    Тестирование, фикс багов: 30 мин
                </li>
                <li class="list-group-item">
                    Оформление: 15 мин
                </li>
                <li class="list-group-item">
                    <span style="font-weight: bold">Итого: 3,5 часа.</span>
                </li>
            </ul>
        </div>

        <div class="col-md-6">

            <h3>Cross-browser</h3>

            <ul class="list-group">
                <li class="list-group-item">
                    Тестирование проходило на следующий браузерах:
                </li>
                <li class="list-group-item">
                    Yandex браузер: 14.5
                </li>
                <li class="list-group-item">
                    Google Chrome: 35.0
                </li>
                <li class="list-group-item">
                    FireFox: 30
                </li>
                <li class="list-group-item">
                    Opera: 22.0
                </li>
                <li class="list-group-item">
                    Internet Explorer: 11.0
                </li>
            </ul>
        </div>
    </div>

    <hr>

    <footer>
        <div class="row">
            <div class="col-lg-12" style="text-align: center">
                <p>Copyright &copy; UNDEADgtr 2014</p>
            </div>
        </div>
    </footer>

</div>

<script type="text/javascript" src="js/jquery-1.10.2.js"></script>

<script type="text/javascript" src="js/lib/underscore.js"></script>
<script type="text/javascript" src="js/lib/backbone.js"></script>
<script type="text/javascript" src="js/lib/handlebars.js"></script>

<script type="text/javascript" src="js/app/helper.js"></script>
<script type="text/javascript" src="js/app/views.js"></script>
<script type="text/javascript" src="js/app/models.js"></script>
<script type="text/javascript" src="js/app/collections.js"></script>
<script type="text/javascript" src="js/app/main.js"></script>

</body>

</html>
