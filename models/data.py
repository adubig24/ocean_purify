from models.connexion import Connexion
from models.don import Don

class Data:
    def stocker(don):
        cursor = Connexion.connexion()

        request = f"INSERT INTO info_don(nom,prenom,email,adresse,don,comments) VALUES('{don.nom.upper()}', '{don.prenom.capitalize()}', '{don.email}', '{don.adresse}', {don.don}, '{don.comments}')"
        
        cursor.execute(request)

        Connexion.deconnexion()

    def recuperer_liste_donateurs():
        liste_donateurs=[]
        
        cursor = Connexion.connexion()

        request = "SELECT nom,prenom,email,adresse,don,comments FROM info_don ORDER BY id DESC LIMIT 13"
        
        cursor.execute(request)

        for i in cursor:
            liste_donateurs.append(Don(i[0], i[1], i[2], i[3], i[4], i[5]))

        Connexion.deconnexion()

        return liste_donateurs
        
    def total_recolte():
        total=0

        cursor=Connexion.connexion()

        request = "SELECT don FROM info_don"

        cursor.execute(request)

        for i in cursor:
            total+=i[0]

        return total