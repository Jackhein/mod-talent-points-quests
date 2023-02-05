USE acore_world;
-- talent point reward for class/group/dungeon unrepeatable quests
UPDATE `quest_template`
SET `RewardTalents` = 1
WHERE `RewardTalents` = 0 AND `QuestType` != 1 AND ID IN (SELECT ID FROM quest_template_addon WHERE SpecialFlags%2!=1)
AND (QuestSortID IN (-61, -81, -82, -141, -161, -162, -261, -262, -263, -372) OR QuestInfoID IN (1, 81));
-- talent points reward for raid unrepeatable quests
UPDATE `quest_template`
SET `RewardTalents` = 2
WHERE `RewardTalents` = 0 AND `QuestType` != 1 AND ID IN (SELECT ID FROM quest_template_addon WHERE SpecialFlags%2!=1)
AND QuestInfoID=62;