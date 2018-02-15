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
        <div class="eventabout">
            <h2 class="eventname">{{data['results'][int(n)]['eventDateName']}}</h2>
            <img src="{{data['results'][int(n)]['imageSource']}}" alt="mynd" class="eventpic">
        </div>
        <div class="eventinfo">
            <h3>Helstu upplýsingar</h3>
            <table class="metadata">
                <tbody>
                    <tr>
                        <td>Umsjón</td>
                        <td>{{data['results'][int(n)]['userGroupName']}}</td>
                    </tr>
                    <tr>
                        <td>Verð</td>
                        <td>14.900 kr</td>
                    </tr>

                </tbody>
            </table>
            <h4 class="dagsetningtext">Dagsetning</h4>
            <table class="eventdate">
                <tbody>
                    <tr>
                        <td>{{data['results'][int(n)]['dateOfShow'][8:-9]}} {{data['results'][int(n)]['dateOfShow'][5:-12]}} {{data['results'][int(n)]['dateOfShow'][:4]}}</td>
                        <td>Kl. {{data['results'][int(n)]['dateOfShow'][-8:]}}</td> <!--[:10] er substring og tekur bara fyrstu 10 characters. data['results'][n]['dateOfShow']-->
                    </tr>
                </tbody>
            </table>

        </div>

    </div>

</body>
</html>

<!--https://stackoverflow.com/questions/44591062/python-json-typeerror-list-indices-must-be-integers-or-slices-not-str?rq=1>
<!-->
