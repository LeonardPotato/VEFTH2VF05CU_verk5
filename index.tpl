<!doctype html>
<html lang="is">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=yes, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Verk 5 - Viðburðir</title>
    <link rel="stylesheet" href="/static/styles.css">
</head>
<body>

    % include('header.tpl')
    <div class="mainpage">
    % i = 0
    % for event in data['results']:
    <div class="event">
    <h2>{{event['eventDateName']}}</h2>
    <h2>{{event['eventHallName']}}</h2>
    <h2>{{event['dateOfShow'][:10]}}</h2>
    <a href="/event/{{i}}">
    <img src="{{event['imageSource']}}" alt="mynd">
    </a>
    </div>
    % i = i + 1
    % end

    </div>
</body>
</html>