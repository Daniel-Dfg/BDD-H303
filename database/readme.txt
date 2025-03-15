!!! : Ceci n'est pas une database final, elle sert juste d'exemple pour pouvoir visualisé nos idées appliquées temporairement. 
On ne dois pas sauter d'étape et vraiment faire les diagrammes avant :) (j'ai commencé à faire ça pour m'entrainer avec SQLite 
et car je trouve ça difficile de détecter les problèmes sans)

Il y a donc trèèèès probablement des erreurs.






Ouverture de la dataBase :
Sur Visual Studio code, ouvrir "database.db" avec l'extention Sqlite3 editor pour voir et interagir avec la base de données
tel un tableau Excel.








Points à discuter ensemble :
--------------------------------------------------------------------------------------------------------------------------------------------------------------

1) Représentation de l’héritage — "Classe" ← Voleur, Mage, Guerrier 
J’ai pensé qu’il serait mieux que toutes les attributs/statistiques communes soient partagées entre 
PNJ, joueurs, ennemis , ect.. et que tous les attributs spécifiques aux classes soient dans une table à part.  

- La table "Statistiques" représente toutes les statistiques possibles pour les personnages et PNJ du jeu.  
  Exemples :  
  - Les Vampires ont la statistique "Envie de Sang"
  - Les Druides ont la statistique "Connexion avec la nature" 

- Ces statistiques sont séparées en :  
  - Statistiques de classe : Valeurs statiques avec lesquelles commence un personnage selon sa classe.  
  - Statistiques de personnage : Valeurs évolutives qui changent individuellement au fil du jeu.  

J'ai appliqué la même logique pour les compétences.  

---------------------------------------------------------------------------------------------------------------------------------------------------------------

2) Calcul des statistiques de base en combat (ex : HP d’un personnage)
Deux solutions possibles :
a) Calcul dynamique
À chaque fois que je veux connaître les HP d’un personnage, je fais HP_BASE_CLASSE + HP_PERSONNAGE pour obtenir son HP actuel.  
- Avantage : Si on ajuste l’équilibrage du jeu (ex : nerf du Guerrier trop fort), il suffit de modifier HP_BASE_CLASSE et tous les personnages seront instantanément mis à jour.  
- Inconvénient : On doit recalculer souvent cette valeur, ce qui peut être lourd si c'est fait à chaque action.  

b) Copie des valeurs de la classe lors de la création du personnage  
Lorsqu’on crée un personnage, ses stats de base sont copiées directement depuis la classe.  
- Avantage : Plus rapide en lecture, car chaque personnage a déjà ses stats enregistrées.  
- Inconvénient : Si on veut modifier les stats d’une classe (ex : nerf du Guerrier), il faudra mettre à jour tous les personnages existants (mais
je crois que SQL est assez optimisé pour ce genre d'opérations?) 

Je choisis la solution B.

---------------------------------------------------------------------------------------------------------------------------------------------------------------

3) Temps de chargement des compétences
On n’a pas précisé si le jeu est un RPG tour par tour ou RPG en temps réel, il faut savoir pour "le temps de recharge" des sorts/compétences.  
J’ai mis ici que le temps de recharge des compétences sera en tours de jeu.