import '../models/game.dart';

class GameRepository {
  static List<Game> listGames = [
    Game(
      name: 'God Of War',
      image: 'gow.png',
      imageBackground: 'gow_background.png',
      description:
          "After five more years of errands for the gods, things come to a head when the Hyrda and Ares' forces almost decimate Kratos' fleet of ships. He asks Athena how much longer he must fight until his memories are taken from him, so she gives him a final task: save Athens from being destroyed by Ares. Having despised the god of war for so long, the task proves to be a win-win situation. With the secret blessing of the Olympians, Kratos seeks out the oracle of Athens and learns he must use the power within Pandora's Box to defeat Ares. Kratos travels to a nearby desert in search of the titan Cronos, who has a temple chained to his back that contains the fabled box. With numerous traps and monsters no mortal could ever beat, Kratos was the first to conquer them all and secure Pandora's Box.",
      urlVideo: 'https://www.youtube.com/watch?v=0N4J-7gsaGc',
      trophies: 5,
      classification: 5,
      platforms: ['playstation, windows'],
    ),
    Game(
      name: 'The Last Of Us Part II',
      image: 'tlou2.png',
      imageBackground: 'tlou2_background.png',
      description:
          "Five years after their dangerous journey across the post-pandemic United States, Ellie and Joel have settled down in Jackson, Wyoming. Living amongst a thriving community of survivors has allowed them peace and stability, despite the constant threat of the infected and other, more desperate survivors.",
      urlVideo: 'https://www.youtube.com/watch?v=LwD3v5hCC50',
      trophies: 5,
      classification: 5,
      platforms: ['playstation'],
    ),
    Game(
      name: 'Horizon Zero Dawn',
      image: 'hzd.png',
      imageBackground: 'hzd_background.png',
      description:
          "Tells a classic science fiction story, one of my favorite examples of the genre: a tale of how humanity’s indomitable spirit and survival instinct can conquer the most hostile circumstances one could imagine. But that alone isn’t why I love it so much. The specifics of Horizon Zero Dawn go beyond that familiar framework to deliver a unique sense of thrill and hope that’s far less common — a vision of the future that’s optimistic because of how strongly it centers women.",
      urlVideo: 'https://www.youtube.com/watch?v=9axpikOIHEo',
      trophies: 5,
      classification: 4,
      platforms: ['playstation, windows'],
    ),
    Game(
      name: 'Mortal Kombat X',
      image: 'mortal_kombat.png',
      imageBackground: 'mortal_kombat_background.png',
      description:
          "Two years after the events of Mortal Kombat, Johnny Cage, Sonya Blade and Kenshi coordinate a battalion to protect the Jinsei from the forces of Shinnok who was found manipulating the events of Mortal Kombat. While on one of the helicopters, the trio are attacked by Scorpion and a spectre of the undead Kuai Liang. During the ensuring fight Johnny manages to push Scorpion off the helicopter. Scorpion manages to teleport away leading Johnny to hit the ground, stunned but otherwise unhurt. With the pilots killed and the helicopter damaged, Sonya is able to crash land the craft. Johnny is able to defeat both undead warriors, and rejoins Kenshi and Sonya. Meanwhile, Raiden and Fujin are in the Sky Temple protecting the entrance to the Jinsei from the Netherrealm demons. Suddenly, Quan Chi arrives and brings Kabal, Sindel and Stryker under his control to fight them.",
      urlVideo: 'https://www.youtube.com/watch?v=jSi2LDkyKmI',
      trophies: 5,
      classification: 5,
      platforms: ['android, apple, playstation, xbox, windows'],
    ),
    Game(
      name: 'Red Dead Redemption II',
      image: 'red_dead2.png',
      imageBackground: 'red_dead2_background.png',
      description:
          "America, 1899. The end of the Wild West era has begun. After a robbery goes badly wrong in the western town of Blackwater, Arthur Morgan and the Van der Linde gang are forced to flee. With federal agents and the best bounty hunters in the nation massing on their heels, the gang must rob, steal and fight their way across the rugged heartland of America in order to survive. As deepening internal divisions threaten to tear the gang apart, Arthur must make a choice between his own ideals and loyalty to the gang who raised him.",
      urlVideo: 'https://www.youtube.com/watch?v=WDvFz2LL1WI',
      trophies: 5,
      classification: 5,
      platforms: ['playstation, xbox, windows'],
    ),
    Game(
      name: 'Little Nightmares II',
      image: 'little_nightmares2.png',
      imageBackground: 'little_nightmares2_background.png',
      description:
          "Little Nightmares II is a suspense-adventure game in which you play as Mono, a young boy trapped in a world that has been distorted by the humming transmission of a distant tower. With Six, the girl in a yellow raincoat, as his guide, Mono sets out to discover the dark secrets of The Signal Tower and save Six from her terrible fate. But their journey will not be straightforward as Mono and Six will face a gallery of new threats from the terrible residents of this world.",
      urlVideo: 'https://www.youtube.com/watch?v=y1UtH4KG6Xc',
      trophies: 5,
      classification: 4,
      platforms: ['playstation, xbox, windows'],
    )
  ];
}
