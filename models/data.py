from models.connexion import Connexion

class Data:
    def stocker(nom, telephone, email, age, sexe, comments):
        cursor = Connexion.connexion()

        request = f"INSERT INTO form(nom,telephone,email,age,sexe,comments) VALUES('{nom}', '{telephone}', '{email}', {age}, '{sexe}', '{comments}')"
        
        cursor.execute(request)

        Connexion.deconnexion()