#include <sourcemod>
#include <sdktools>

public Plugin myinfo =
{
    name = "TF2 Dogfight",
    author = "Justin Martin <frozenfire@thefrozenfire.com>",
    description = "Soldier dogfighting in TF2",
    version = "0.0.0.0",
    url = "https://github.com/TheFrozenFire/tf2-dogfight"
}

#include "tf2-dogfight/events.sp"
#include "tf2-dogfight/behaviours.sp"

public void OnPluginStart()
{
    // Event hooks
    HookEvent("player_spawn", Event_InitializePlayer);
    HookEvent("player_death", Event_CreditKill);
}
