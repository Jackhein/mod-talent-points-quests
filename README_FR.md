# Module des points de talent 
[English](README.md) | [Français](README_FR.md)

### Description

Modifie le système d'acquisition de points de talent.
Donne désormais 1 point par quêtes de classe, groupe et donjon. 2 pour les quêtes de raid.
Permets d'avoir une réserve de 5 points supplémentaires jusqu'à la limite de niveau max.

### Mise en place:

###### Récupérer le projet
Clonez le projet dans le dossier module sous le nom `mod-talent-points`.

###### Modification de l'acquisition des points de talent
À partir de maintenant nous considérons que vous vous trouvez à la racine de votre serveur.
Appliquer le patch git en utilisant la commande suivante:\
`git apply --ignore-space-change --ignore-whitespace modules/mod-talent-points/player.patch`

Ou modifiez directement `src/server/game/Entities/Player/Player.cpp` via votre éditeur favori
et appliquez les modifications trouvées dans `modules/mod-talent-points/player.patch`.

###### Modifcation de la Base de Données
Appliquez les requêtes dans les fichiers sql sous le dossier `modules/mod-talent-points/sql/world/updates`.

Voici une commande que j'utilise souvent pour appliquer directement plusieurs fichiers sql:\
`for sql in $(find modules/MODULE_FOLDER/data/sql/*world*/ -type f -name '*.sql'); do mysql -uUSERDB -hHOSTDB -Dacore_world -p < ${sql}; done`

###### Recompilez et voilà.


### Crédits

* [Jackhein](https://github.com/Jackhein) (auteur du module)
* [Miorey](https://github.com/Miorey/)

Notre serveur [MurlocVillage](https://wotlk.murlocvillage.com/fr/)\
&emsp;&emsp;&ensp;&nbsp;Merci à [AzerothCore](http://azerothcore.org/)
