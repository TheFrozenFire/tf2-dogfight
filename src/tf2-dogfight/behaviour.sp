#include "behaviour/player.sp"

methodmap DogfightBehaviour {
    property DogfightModel model;
    property DogfightBehaviour_Player player;
    
    public DogfightBehaviour()
    {
        this.model = new DogfightModel();
        this.player = new DogfightBehaviour_Player(this.model.player);
    }
    
    public void initializePlayer(int client)
    {
        this.player.ForceSoldier(client);
        this.player.ForceLoadout(client);
        this.player.InitializeLoadout(client);
        
        // Display loadout menu if a loadout isn't selected
        this.player.DisplayLoadoutMenu(client, true);
    }
};
