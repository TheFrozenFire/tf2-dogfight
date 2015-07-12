#include <sourcemod>
#include <sdktools>
#include <tf2>
#include <tf2_stocks>

#pragma newdecls required

#include "tf2-dogfight/entity.sp"
#include "tf2-dogfight/model.sp"
#include "tf2-dogfight/behaviour.sp"
#include "tf2-dogfight/event.sp"

public Plugin myinfo =
{
    name = "TF2 Dogfight",
    author = "Justin Martin <frozenfire@thefrozenfire.com>",
    description = "Soldier dogfighting in TF2",
    version = "0.0.0.0",
    url = "https://github.com/TheFrozenFire/tf2-dogfight"
}

public void OnPluginStart()
{
    DogfightEvents events = new DogfightEvent();

    HookEvent("player_spawn", events.InitializePlayer);
    HookEvent("player_death", events.CreditKill);
}
