# Werewolf: Laser printer edition
This is a libre edition of Werewolf, a game created by Andrew Plotkin based on an even older game called Mafia. It's for playing with large amounts of people (10+). This was made for players on a budget who want to enjoy the game spending only some A4 sheets and a having a b/w printer.

Rules are so simple that they won't be explained here (yet). You can find them all across the internet. All of the roles are fully described in the cards as an aid for the players and there are some reference cards for some roles.

### Why is this game in spanish?
I made it to play with my friends which are all spanish speakers. English translation will take a while (since I wont be actively maintaining this project) but pull requests are welcome.

## Print and Play Notes
[Download the latest version here](https://github.com/Xpktro/werewolf/releases). Print the PDF file using A4 sheets. Cut and play.

## Developers / Hacking
This was made using [Squib v0.11.0](https://github.com/andymeneely/squib/): An amazing Ruby card game creation DSL. Install is pretty much straightforward: having Ruby 2.2+ just `gem install squib -v 0.11.0`. `rake deck` into this folder to build the deck. Everything else can be learned reading the [Squib official docs](http://squib.readthedocs.io/en/v0.11.0/).
