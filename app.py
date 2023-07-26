from flask import Flask, render_template, request
from models.data import Data

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/form')
def form():
    return render_template('form.html')

@app.route('/resultat', methods=['POST'])
def resultat():
    nom=request.values.get('nom')
    telephone=request.values.get('telephone')
    email=request.values.get('email')
    age=request.values.get('age')
    sexe=request.values.get('sexe')
    comments=request.values.get('comments')
    Data.stocker(nom,telephone,email,age,sexe,comments)
    return render_template('resultat.html', nom=nom)

if __name__=='__main__':
    app.run(debug=True)