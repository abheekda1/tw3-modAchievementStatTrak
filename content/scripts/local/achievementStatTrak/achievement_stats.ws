// TODO: Multiple functions: one returns array of stuff, another formats, and one final exec function

// Function to get the stats in a formatted string
function getAchievementStats() : string
{
    // Integer to be later used in the for loop
    var i : int;

    // Array to store the achievement stats
    var stats : array<EStatistic>;

    // String where all the achievements go
    var achievementString : string;
    
    // Set achievement string empty to be later added on to
    achievementString = "";

    // Add all stats to the array
    stats.PushBack(ES_CharmedNPCKills);
    stats.PushBack(ES_AardFallKills);
    stats.PushBack(ES_EnvironmentKills);
    stats.PushBack(ES_CounterattackChain);
    stats.PushBack(ES_DragonsDreamTriggers);
    stats.PushBack(ES_KnownPotionRecipes);
    stats.PushBack(ES_KnownBombRecipes);
    stats.PushBack(ES_ReadBooks);
    stats.PushBack(ES_HeadShotKills);
    stats.PushBack(ES_BleedingBurnedPoisoned);
    stats.PushBack(ES_DestroyedNests);
    stats.PushBack(ES_FundamentalsFirstKills);
    stats.PushBack(ES_FinesseKills);
    stats.PushBack(ES_SelfArrowKills);
    stats.PushBack(ES_ActivePotions);
    stats.PushBack(ES_KilledCows);
    stats.PushBack(ES_SlideTime);

    // Loop through each stat to create a final string that goes in the Gwent book
    for (i = 0; i < stats.Size(); i += 1)
    {
        achievementString += StatisticEnumToName(stats[i]) + ": " + "<font color='#00ff00'>" + theGame.GetGamerProfile().GetStatValue(stats[i]) + "</font>" + "<br>";
    }
    
    // Return the final string
    return achievementString;
}