# Remarque générale
- Toutes les valeurs traitées ici (niveau, mana, quantités d’objets, etc.) sont des entiers positifs, sauf les probabilités (d’obtention d’objets ou de récompenses), qui sont exprimées par des valeurs décimales comprises entre 0 et 1.
- On suppose que toutes les valeurs traitées ici ont un maximum.
- On définit une "compétence" comme étant un sort combiné à une action telle que "voler" + "coup d'épée" etc. (c'est une hypothèse ? c'est quoi la combianison pour sort boule de feu par ex?)

# Utilisateurs 
- Lorsqu'un joueur accumule suffisamment de points d'expérience pour atteindre la valeur maximale d'un niveau, il passe au niveau supérieur et ses points d'expérience sont remis à zéro.

# Personnages
- Lorsqu'un joueur accumule suffisamment de points d'expérience pour atteindre la valeur maximale d'un niveau, il passe au niveau supérieur et ses points d'expérience sont remis à zéro.
- Un joueur ne peut faire que 4 choses avec des objets : en accumuler, et s'il en a, les consommer, les jeter ou les équiper.
- Chaque personngage possède une classe, la classe du personnage doit être choisi avant de commencer le jeu (mettre realtion (1,1) rend cette contrainte inutile probablement)
- Un personnage voit ses ses stats de vie et de mana revenir au full quand il ressuscite (à mettre dans hypothèse plutot?)
- Plus de capacités qu'un nombre n ne peut pas être équipé (équipé=/=utilisation) en même temps. Un personnage ne peut avoir plus de x capacités acquis.

## Classe des personnages
- Les éléments nommés `*_base` (Mana_base, HP_Base, ...) représentent les statistiques initiales des différentes classes de personnages.
- Le niveau d'un personnage peut atteindre une valeur maximale de 99. Il est initialement à 1.
- Un personnage ne peut plus changer de classe une fois sélectionné

 ### Attributs par classe :

- HP_base des Guerriers > HP_base des Voleurs > HP_base des Mages.
- Mana_base des Mages > Mana_base des Voleurs > Mana_base des Guerriers.
- Agilité_base des Voleurs > Agilité_base des Guerriers> Agilité_base des Mages.
- Intelligence_base des Mages > Intelligence_base des Voleurs  > Intelligence_base des Guerriers.
- Force_Base des Guerriers > Force_Base des Voleurs >  Force_Base des Mages


## Capacités
- ??? Compréhensible sur le schéma? : Lors de la création d'un personnage, ses attributs, statistiques et compétence initials sont ceux définis par sa classe.
- Les quantités de Mana, Agilité et HP d'un personnage (`*_Évolutif`) sont déterminées en fonction de son niveau.
- Le coût en Mana des Compétences d'un personnage ne peut excéder le Mana actuel du personnage (`Mana_Évolutif`).
- Tant que le temps de recharge d'une compétence n'est pas revenu à 0, on ne peux pas activer la compétence.
- Les attributs et statistiques d'un personnage peut atteindre une valeur maximale de 999.


## Compétences
- Une compétence ne peut pas être utilisée si le personnage ne l’a pas apprise.
- Une compétence ne peut pas être améliorée au-delà de son niveau max. (systeme de niveau des competence ? à réflechir car peut ajouter beaucoup de chose à implementer, il faudra préciser pour chaque niveau de chaque competence le coût en mana,temps de recharge,puissance d'attaque, il vaut mieux juste faire scale les dégats avec les attributs perso ce sera bien plus facile)
- Un personnage ne peux pas utiliser une compétence tant que son temps de recharge n'est pas à 0.
- Le niveau de déblocage d'une compétence ne peut excéder le niveau maximal pour un personnage.
- Certaines compétences sont spécifiques à une ou plusieurs classes, et logiquement uniquement débloquables par celles-ci. (hypothèse)

## Inventaire
- La quantité d’objets contenu dans l'inventaire du personnage ne peut dépasser la limite définie par son niveau et les éventuels artéfacts augmentant cette capacité.

## Quete
- Le niveau d'une quête varie entre 1-10.

## Autres considérations
- Le personnage possède des lignes de dialogue non seulement en relation avec des PNJ, mais également seul (par exemple, lorsqu'il n'a pas bougé depuis quelques temps, il dit quelque chose même s'il est complètement seul). (c'est un ajout non demandé qui apporte une difficulté sans beaucoup d'apport gameplay)

# Objets
- !!! : A supprimé pour moi : Le prix d'un objet ne peut pas excéder la quantité maximale d'argent stockable par un Utilisateur en théorie, c'est-à-dire la quantité maximale d'argent stockable au niveau maximal et avec tous les artéfacts pouvant possiblement augmenter cette capacité.
-  Un objet ne peut pas être vendu si le stock est à 0.
