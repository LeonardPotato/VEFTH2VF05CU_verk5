from bottle import run, route, template, static_file, error
import requests, os

response = requests.get('http://apis.is/concerts')

data = response.json()

#print(data['results'][0]['eventHallName']) TEST

@route('/')
def index():
    return template('index',data=data)

@route('/event/<n>')
def event(n):
    return template('eventpage',n=n, data=data)

@route('/static/<filename>')
def static_server(filename):
    return static_file(filename,root=('./myfiles'))
run()
#run(host="0.0.0.0", port=int(os.environ.get("PORT", 5000)))
#ath setja requests inn i requrements med bottle

# profa ad printa n
