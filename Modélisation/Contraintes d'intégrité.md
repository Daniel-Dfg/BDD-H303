# Remarque générale
- Toutes les valeurs traitées ici (niveau, mana, quantités d’objets, etc.) sont des entiers positifs. Sauf les probabilités d’obtention d’objets, qui sont exprimées par des valeurs décimales comprises entre 0 et 1.
- ??? : Toute les valeurs ici on une valeur maximale (pour évité la repétition)
- ??? : Compétence = sort + action tel que "voler" + "coup d'épée" etc.

# Utilisateurs 
- Lorsqu'un joueur accumule suffisamment de points d'expérience pour atteindre la valeur maximale d'un niveau, il passe automatiquement au niveau supérieur et ses points d'expérience sont remis à zéro.
- Le niveau, les points d'experience et la quantité de monnaie d'un utilisateur ont une valeur maximale.
- Tout les personnages nommées "Daniel" commence automatiquement avec 0 en intelligence et un artéfact maléfique "Rond".
- Tout les personnages nommées "Belinda" commence automatiquement avec les stats Max et 5 millions d'euros.


# Classe des personnages
- Les éléments nommés `-*_base` (Mana_base, HP_Base, ...) représentent les statistiques initiales des différentes classes de personnages.
- Le niveau d'un personnage peut atteindre une valeur maximale (par ex. 99).

  Attributs et statistiques :

- HP_base des Guerriers > HP_base des Voleurs > HP_base des Mages.
- Mana_base des Mages > Mana_base des Voleurs > Mana_base des Guerriers.
- Agilité_base des Voleurs > Agilité_base des Guerriers> Agilité_base des Mages.
- Intelligence_base des Mages > Intelligence_base des Voleurs  > Intelligence_base des Guerriers.
- Force_Base des Guerriers > Force_Base des Voleurs >  Force_Base des Mages


# Capacités des personnages
- ??? Compréhensible sur le schéma? : Lors de la création d'un personnage, ses attributs, statistiques et compétence initials sont ceux définis par sa classe.
- Les quantités de Mana, Agilité et HP d'un personnage (`*_Évolutif`) sont déterminées en fonction de son niveau.
- Le coût en Mana des Compétences d'un personnage ne peut excéder le Mana actuel du personnage (`Mana_Évolutif`).
- Tant que le temps de recharge d'une compétence n'est pas revenu à 0, on ne peux pas activé la compétence.
- Les attributs et statistiques d'un personnage peut atteindre une valeur maximale (par ex. 999).


# Compétences des personnages
- Une compétence ne peut pas être utilisée si le personnage ne l’a pas apprise
- Une compétence ne peut pas être améliorée au-delà de son niveau max (par ex. 99)
- Un personnage ne peux pas utiliser une compétence tant que son temps de recharge n'est pas à 0.
- Le niveau de déblocage d'une compétence ne peut excéder le niveau maximal pour un personnage.
- Certaines compétence de classe ne peuvent pas être appris par des Personnage d'autre classe ? Ou n'importe quel compétences peux être appris avec
- par exemple un artéfact, bouquin, ect.

# Inventaire des personnages
- ??? : La quantité d’objets contenu dans l'inventaire du personnage ne peut dépasser la limite définie par son niveau, sauf si celui-ci possède des artéfacts augmentant cette capacité.
- La quantité d'un même objet dans l'inventaire à une valeur maximal (par ex.99)

# Récompense 
- La probabilité d'obtention d'une récompense doit être comprise entre 0 et 100 inclus.

# Objets
- !!! : A supprimé pour moi : Le prix d'un objet ne peut pas excéder la quantité maximale d'argent récupérable par un Utilisateur.
-  Un objet ne peut pas être vendu si le stock est à 0.