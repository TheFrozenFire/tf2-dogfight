# TF2 Dogfight

## Premise

TF2 dogfighting is primarily a soldier-oriented game mode. It is inspired by
an interesting soldier loadout in the VS Saxton Hale servers that
[GWF](http://www.gamesnfriends.com/) maintains.

The initial loadout implementation will be Airstrike + Base Jumper, where the
Airstrike's firing mechanics have been modified. To get into the air, players
will initially have a single rocket that they can fire until they've already
rocket-jumped. Then they can activate their Base Jumper to stay airborne,
firing rockets beneath themselves to regain altitude.

After the initial rocket jump off the ground, the player will be able to fire a
continual stream of rockets by holding down attack1. By racking up kills on
other players, the player will gain additional ammo capacity.

With additional capacity comes the ability to fire an initial "burst" of
rockets, instead of individual rockets in a stream (but automatically followed
by the stream firing pattern). This burst of rockets allows the player to gain
additional altitude quickly, as opposed to a single rocket which produces a
small initial launch. It also allows players to direct a large amount of damage
to a single location all at once.

Availability of ammo will be dependent initially on ammo packs that respawn
throughout the map. However, an additional mechanic may be possible where
players can deploy a dispenser on the ground that they can feed off of for
health and ammo. Protecting one's dispenser may become a fundamental goal of
this game mode.

Later development may include additional loadouts, and the ability to mix
and match your own loadouts for increased variety. Possibilities include:

* Black Box + Concheror/Gunboats - a low-altitude self-healer
* Direct Hit + Battalion's Backup - sniper equivalent, maybe tanky
* Beggar's Bazooka + Gunboats/Mantreads - low control, high altitude + damage

## Mechanics

### Goal possibilities

#### Kill to Sudden Death

More kills, more rockets. Rack up kills to gain the advantage. After any player
gets a certain number of kills, the game switches to sudden death mode. In
sudden death, all players are immediately respawned with the progress they
have, and lose their ability to respawn. Last team standing wins.

#### Respawn Backoff

The longer the round lasts, the longer respawns take. Wipe out the other team
to win.
