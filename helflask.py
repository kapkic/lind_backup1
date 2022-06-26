from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Web App with Python Flask!'
#    nav = [
#            {'name': 'Lind', 'url': 'https://nyu.edu'},
#            {'name': 'Ahmet', 'url': 'https://kapkic.com/2'},
#            {'name': 'Nick', 'url': 'https://nick.com/3'}]
#    return render_template('home.html', nav=nav, title="DemoSite",description="LindTest")
    #return render_template('home.html')
host='127.0.0.1'
app.run(host,port=80)


