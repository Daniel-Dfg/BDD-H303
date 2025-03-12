# Remarque générale
- Toutes les valeurs traitées ici (niveau, Mana...) sont entières et strictement positives. Seule exception : la monnaie possédée par l'utilisateur, qui peut être à 0 (mais doit demeurer positive).
# Classe des personnages
- Les éléments nommés `-*_base` (Mana_base, HP_Base, ...) représentent les statistiques initiales des différentes classes de personnages.
- Mana_base des Mages > Mana_base des Voleurs > Mana_base des Guerriers.
- Agilité_base des Voleurs > Agilité_base des Mages > Agilité_base des Guerriers.
- HP_base des Guerriers > HP_base des Mages > HP_base des Voleurs.
- Le niveau d'un personnage peut atteindre une valeur maximale (par ex. 99).

# Capacités des personnages
- Les quantités de Mana, Agilité et HP d'un personnage (`*_Évolutif`) sont déterminées en fonction de son niveau.
- Le coût en Mana des Compétences d'un personnage ne peut excéder le Mana actuel du personnage (`Mana_Évolutif`).
- Le niveau de déblocage d'une compétence ne peut excéder le niveau maximal pour un personnage.

# Utilisateur
- Le niveau d'un utilisateur est déterminé en fonction de ses points d'expérience.
- Le niveau et la quantité de monnaie d'un utilisateur ont une valeur maximale.

# Objets
- Le prix d'un objet ne peut pas excéder la quantité maximale d'argent récupérable par un Utilisateur.
