#Group or Dungeon or Classes quest
select ID from quest_template WHERE QuestInfoID=(1 or 81);
#Raid quest
select ID from quest_template WHERE QuestInfoID=62;

#Final quest
SELECT ID FROM quest_template_addon WHERE PrevQuestID!=0 AND NextQuestID=0;
SELECT ID, RewardTalents FROM quest_template WHERE ID IN (SELECT ID FROM quest_template_addon WHERE PrevQuestID!=0 AND NextQuestID=0) AND RewardNextQuest=0 AND Flags!=4096;

