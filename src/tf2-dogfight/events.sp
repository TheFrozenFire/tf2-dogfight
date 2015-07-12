public void Event_InitializePlayer(Event event, const char[] name, bool dontBroadcast)
{
    int user_id = GetEventInt(event, "userid");
    
    int client = GetClientOfUserId(user_id);

    Behaviour_Player_ForceSoldier(client);
    Behaviour_Player_ForceLoadout(client);
    Behaviour_Player_InitializeLoadout(client);
    
    // Display loadout menu if a loadout isn't selected
    Behaviour_Player_DisplayLoadoutMenu(client, true);
}

public void Event_CreditKill(Event event, const char[] name, bool dontBroadcast)
{}
