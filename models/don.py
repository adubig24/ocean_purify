class Don:
    def __init__(self, nom, prenom, email, adresse, don, comments):
        self.__nom = nom
        self.__prenom = prenom
        self.__email = email
        self.__adresse = adresse
        self.__don = don
        self.__comments = comments
    
    def __get__nom(self):
        return self.__nom
    
    def __get__prenom(self):
        return self.__prenom

    def __get__email(self):
        return self.__email
    
    def __get__adresse(self):
        return self.__adresse
    
    def __get__don(self):
        return self.__don
    
    def __get__comments(self):
        return self.__comments
    
    nom=property(__get__nom)
    prenom=property(__get__prenom)
    email=property(__get__email)
    adresse=property(__get__adresse)
    don=property(__get__don)
    comments=property(__get__comments)