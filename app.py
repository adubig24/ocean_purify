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

@app.route('/liste_donateurs', methods=['POST'])
def liste_donateurs():
    nom=request.values.get('nom')
    prenom=request.values.get('prenom')
    email=request.values.get('email')
    adresse=request.values.get('adresse')
    don=request.values.get('don')
    comments=request.values.get('comments')
    donateur=Don(nom, prenom, email, adresse, don, comments)
    Data.stocker(donateur)
    liste_donateurs=Data.recuperer_liste_donateurs()
    total_recolte=Data.total_recolte()
    return render_template('liste_donateurs.html', liste_donateurs=liste_donateurs, total_recolte=total_recolte)

if __name__=='__main__':
    app.run(debug=True)