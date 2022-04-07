class Animal {
  final int id;
  final String name;
  final String description;
  final String animalImage;

  Animal(this.id, {
    required this.name,
    required this.description,
    required this.animalImage});
}

List<Animal> animalList = [
  Animal(1, 
  name: "King Crab", 
  description:'King crabs are a taxon of crab-like decapod crustaceans chiefly found in cold seas. Because of their large size and the taste of their meat, many species are widely caught and sold as food, the most common being the red king crab',
  animalImage: 'assets/images/c_crab.png'),

  Animal(2, 
  name: "Elephant", 
  description:'are the largest existing land animals. Three living species are currently recognised: the African bush elephant, the African forest elephant, and the Asian elephant.',
  animalImage: 'assets/images/c_elephant.png'),

  
];