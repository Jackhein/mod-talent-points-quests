# Talent points module
[English](README.md) | [Français](README_FR.md)

### Description

Modify talent points reward system.\
Now give 1 point by class, group and dungeon quests. 2 points for raid ones.\
Can collect up to 5 more points than usual until level max.

### How to implement

###### Get project
Clone project within modules folder under then name `mod-talent-points`.

###### Modify talent points acquisition
From now on, I'll consider we're currently in root of your warcraft server project.\
Apply git patch by typing following command :\
`git apply --ignore-space-change --ignore-whitespace modules/mod-talent-points/player.patch`

Or modify directly `src/server/game/Entities/Player/Player.cpp` with you favorite editor
and apply modification seen in `modules/mod-talent-points/player.patch`.

###### Modify DB quests
Apply request seen in sql files under `modules/mod-talent-points/sql/world/updates` folder.

Here one command I use often to implement directly multiple sql files:  
`for sql in $(find modules/MODULE_FOLDER/data/sql/*world*/ -type f -name '*.sql'); do mysql -uUSERDB -hHOSTDB -Dacore_world -p < ${sql}; done`

###### Recompile and that all.


### Credits

* [Jackhein](https://github.com/Jackhein) (author of this module)
* [Miorey](https://github.com/Miorey/)

Our server [MurlocVillage](https://wotlk.murlocvillage.com/fr/)\
&nbsp;Thanks to [AzerothCore](http://azerothcore.org/)
