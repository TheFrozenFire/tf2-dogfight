#include "model/player.sp"

methodmap DogfightModel {
    property DogfightModel_Player player;
    
    public DogfightModel()
    {
        this.player = new DogfightModel_Player();
    }
}
