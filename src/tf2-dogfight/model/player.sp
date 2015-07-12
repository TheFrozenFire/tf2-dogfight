methodmap DogfightModel_Player {
    public char[][] Model_Player_GetRequiredLoadout(int client)
    {
        char loadout[][5];
        
        loadout[0] = "tf_weapon_rocketlauncher_airstrike";
        loadout[1] = "tf_weapon_parachute";
        
        return loadout;
    }
};
