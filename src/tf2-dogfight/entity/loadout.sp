methodmap DogfightEntity_Loadout < ArrayList {
    public char[] GetSlot(int slot)
    {
        return this.Get(slot);
    }
    
    public void SetSlot(int slot, char[] itemClass)
    {
        this.SetString(slot, itemClass);
    }
    
    public bool SlotMatches(int slot, char[] itemClass)
    {
        char requiredItemClass[255];
        
        requiredItemClass = this.GetSlot(slot);
    
        if(strcmp(requiredItemClass, itemClass, false) == 0) {
            return true;
        } else {
            return false;
        }
    }
};
