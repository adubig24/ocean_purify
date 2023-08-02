from models.connexion import Connexion

class Data:
    def stocker(don):
        cursor = Connexion.connexion()

        request = f"INSERT INTO info_don(nom,prenom,email,adresse,don,comments) VALUES('{don.nom.upper()}', '{don.prenom.capitalize()}', '{don.email}', '{don.adresse}', {don.don}, '{don.comments}')"
        
        cursor.execute(request)

        Connexion.deconnexion()