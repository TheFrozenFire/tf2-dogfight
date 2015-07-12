methodmap DogfightBehaviour_Player {
    property DogfightModel_Player playerModel {}
    
    public DogfightBehaviour_Player(DogfightModel_Player playerModel)
    {
        this.playerModel = playerModel;
    }

    public void Player_ForceSoldier(int client)
    {
        if(TF2_GetPlayerClass(client) == TFClass_Soldier) {
            return;
        }
        
        TF2_SetPlayerClass(client, TFClass_Soldier);
    }

    public void Player_ForceLoadout(int client)
    {
        int checkedWeapon;
        char[] checkedWeaponClass;
        DogfightEntity_Loadout loadout = this.playerModel.GetRequiredLoadout(client);
        
        for(int slot = 0; slot < sizeof(loadout); slot++) {
            checkedWeapon = GetPlayerWeaponSlot(client, slot);
            
            if(GetEntityClassname(checkedWeapon, checkedWeaponClass, 255)) {
                if(loadout.SlotMatches(slot, checkedWeaponClass) == false) {
                    TF2_RemoveWeaponSlot(client, slot);
                    GivePlayerItem(client, loadout[slot]);
                }
            }
        }
    }

    public void Player_InitializeLoadout(int client)
    {}

    public void Player_DisplayLoadoutMenu(int client, bool checkExisting)
    {}
};
