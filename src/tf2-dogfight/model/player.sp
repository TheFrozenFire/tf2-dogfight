methodmap DogfightModel_Player {
    property ArrayList loadouts {}

    public DogfightModel_Player()
    {
        this.loadouts = new ArrayList();
        
        DogfightEntity_Loadout loadout = new DogfightEntity_Loadout();
        loadout.SetSlot(0, "tf_weapon_rocketlauncher_airstrike");
        loadout.SetSlot(1, "tf_weapon_parachute");
        this.loadouts.Push(loadout);
    }

    public DogfightEntity_Loadout GetRequiredLoadout(int client)
    {
        DogfightEntity_Loadout loadout;
        
        loadout = this.loadouts.Get(0);
    
        return loadout;
    }
};
