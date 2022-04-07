class Avengers {
  final int id;
  final String name;
  final String description;
  final String heroImage;

  Avengers (this.id, {
    required this.name,
    required this.description,
    required this.heroImage});
}

List<Avengers> heroList = [
  Avengers(1, 
  name: "Iron Man", 
  description:"Iron Man is a superhero appearing in American comic books published by Marvel Comics. A wealthy American business magnate, philanthropist, inventor and ingenious scientist, suffered a severe chest injury during a kidnapping. When his captors attempt to force him to build a weapon of mass destruction, he instead creates a mechanized suit of armor to save his life and escape captivity. Later, Stark develops his suit, adding weapons and other technological devices he designed through his company, Stark Industries. He uses the suit and successive versions to protect the world as Iron Man. Although at first concealing his true identity, Stark eventually publicly reveals himself to be Iron Man.",
  heroImage: 'assets/images/iron-man.png'),

  Avengers(2, 
  name: "Black Widow", 
  description:"The Black Widow's first appearances were as a recurring, non-costumed, Russian-spy antagonist in the feature 'Iron Man', beginning in Tales of Suspense #52 (April 1964). Her government later supplies her with her first Black Widow costume and high-tech weaponry, but she eventually defects to the United States after appearing, temporarily brainwashed against the U.S., in the superhero-team series The Avengers. The Widow later becomes a recurring ally of the team before officially becoming its 16th member many years later."
  ,
  heroImage: 'assets/images/black-widow.png'),

  Avengers(3, 
  name: "Captain America", 
  description: "Captain America was designed as a patriotic supersoldier who often fought the Axis powers of World War II and was Timely Comics most popular character during the wartime period. The character wears a costume bearing an American flag motif, and he utilizes a nearly-indestructible shield that he throws as a projectile.",
  heroImage: 'assets/images/captain-america.png'),
  
  Avengers(4, 
  name: "Hawkeye", 
  description: "Hawkeye, otherwise known as ‘The World's Greatest Marksman’. He witnessed Iron Man in action and was inspired to become a costumed hero. However, after a misunderstanding on his first outing, Hawkeye was accused of theft and believed to be a criminal. On the run, the naive Hawkeye met Black Widow, a spy for the Soviet Union, with whom he fell in love. Mindlessly following Black Widow, Hawkeye aided her attempts to steal technology developed by Tony Stark (Iron Man). In one of their battles with Iron Man, Black Widow was seriously injured. Hawkeye rescued her and fled the battle to save her life. But before Hawkeye could take her to a hospital, Black Widow disappeared. Hawkeye decided to be a 'straight-shooter' from then on.",
  heroImage: 'assets/images/hawkeye.png'),

  Avengers(5, 
  name: "Spiderman", 
  description: "Following the Blip, Parker briefly becomes Stark's chosen successor until his secret identity becomes public, and the events that transpire after he enlists Stephen Strange's help to reverse this causes the multiverse to open. Strange and Parker eventually resolve the crisis by casting a new spell that permanently erases the world's shared knowledge of his civilian persona, including the bonds he once shared with his loved ones, friends, and other superhero allies.",
  heroImage: 'assets/images/spiderman.png'),
];