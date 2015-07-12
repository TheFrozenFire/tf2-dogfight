methodmap DogfightEvent {
    property DogfightBehaviour behaviour;
    
    public DogfightEvents()
    {
        this.behaviour = new DogfightBehaviour();
    }

    public void InitializePlayer(Event event, const char[] name, bool dontBroadcast)
    {
        int user_id = GetEventInt(event, "userid");
        
        int client = GetClientOfUserId(user_id);

        this.behaviour.initializePlayer(client);
    }

    public void CreditKill(Event event, const char[] name, bool dontBroadcast)
    {}
};
