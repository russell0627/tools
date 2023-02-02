import 'package:flutter/material.dart';
import 'package:tools/pets/models/pet.dart';

final hermitCrab = Pet(
  species: "Hermit Crab",
  food: "Hermit Crab pellets and carrot sticks. And occasionally Hermit Crab Salad. Feed once a day",
  hydration: "Hermit Crab Sponge soaked in conditioned fresh water.",
  humidity: "70% to 80%",
  temperature: "72 to 80 degrees F.",
  habitat:
      "Hermit Crabs require a small dish of conditioned salt water that they can wade into. They need this because they need to keep the inside of their shell (Gills and Abdomen) damp. "
      "Hermit Crabs need coconut fiber substrate and sand in their enclosure. Their sand needs to be high enough that they can bury themselves in it. "
      "They need some extra shells so that they can change shells. ",
  image: const AssetImage("assets/hermit_crab.jpg"),
  habitatImage: const AssetImage("assets/hermit_crab_enclosure.jpg"),
);

final crestedGecko = Pet(
  species: "Crested Gecko",
  food: "Repashy crested gecko powder mixed with water. Occasionally Regular Pet Salad. Feed one to two times a week.",
  hydration: "Small shallow dish of water",
  humidity: "60% to 80%",
  temperature: "72 to 75 degrees F.",
  habitat:
      "Because this is an arboreal gecko it needs lots of ground hiding places and high climbing sticks. It is best to do this in a vertical enclosure for this animal",
  image: const AssetImage("assets/crested_gecko.jpg"),
  habitatImage: const AssetImage("assets/crested_gecko_enclosure.jpg"),
);

final leopardGecko = Pet(
  species: "Leopard Gecko",
  food:
      "Crickets no bigger than the gecko’s head. Mealworms as treats. 6-7 large crickets 2 to 3 times a week or with supplements like waxworms or Calciworms Feed it 3 to 5 worms 3 times a week",
  hydration: "Small shallow dish of water.",
  humidity: "30% to 40%",
  temperature: "77 to 90 degrees F.",
  habitat: "This animal needs a basking spot and a hide for cooling down it also needs some open space.",
  other: "A Leopard Gecko’s tail will change colors when it is cold or stressed.",
  image: const AssetImage("assets/leopard_gecko.jpg"),
  habitatImage: const AssetImage("assets/leopard_gecko_enclosure.jpg"),
);

final mourningGecko = Pet(
  species: "Mourning Gecko",
  food: "Repashy Crested Gecko diet replaced every 24 to 48 hours and calcium dusted insects 1 to 2 times a week.",
  hydration: "Misting them.",
  humidity: "60% to 80%",
  temperature: "70 to 80 degrees F.",
  habitat:
      "Mourning geckos will lay eggs without a male (The males do exist and they are infertile) and the eggs will hatch. It is best to remove hatchlings from the enclosure or they will be eaten by the mother. Mourning Geckos are arboreal so they need some high places to climb to and hides on the floor",
  image: const AssetImage("assets/mourning_gecko.jpg"),
  habitatImage: const AssetImage("assets/mourning_gecko_enclosure.jpg"),
);

final aquariumR = Pet(
    species: "Tetras, Corydora, Loaches, and Frogs",
    food:
        "A small sprinkle of crushed tropical fish flakes and a few algae wafers, and some sinking wafers for the corydora",
    hydration: "The aquarium water is fresh and 20% needs to be changed once a week",
    humidity: "What did you expect",
    temperature: "75F to 80F",
    habitat: "An area with lots of plants for hiding",
    image: const AssetImage("assets/neon_tetra.jpg"),
    habitatImage: const AssetImage("assets/neon_tetra.jpg"));
