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
    <div class="eventpage">

    <h2>{{data['results'][n]['eventDateName']}}</h2>
    <h2>{{data['results'][n]['dateOfShow'][:10]}}</h2> <!--[:10] er substring og tekur bara fyrstu 10 characters. data['results'][n]['dateOfShow']-->
    <img src="{{data['results'][n]['imageSource']}}" alt="mynd">


    </div>
</body>
</html>

<!--https://stackoverflow.com/questions/44591062/python-json-typeerror-list-indices-must-be-integers-or-slices-not-str?rq=1>
<!-->