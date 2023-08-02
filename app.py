from flask import Flask, render_template, request
from models.data import Data
from models.don import Don

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
    prenom=request.values.get('prenom')
    email=request.values.get('email')
    adresse=request.values.get('adresse')
    don=request.values.get('don')
    comments=request.values.get('comments')
    donateur=Don(nom, prenom, email, adresse, don, comments)
    Data.stocker(donateur)
    return render_template('resultat.html', nom=nom)

if __name__=='__main__':
    app.run(debug=True)