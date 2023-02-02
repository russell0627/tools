import 'package:flutter/material.dart';

import '../data/pets.dart';
import '../models/pet.dart';

class PetHomePage extends StatefulWidget {
  const PetHomePage({Key? key}) : super(key: key);

  @override
  State<PetHomePage> createState() => _PetHomePageState();
}

class _PetHomePageState extends State<PetHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Pet Care Home"),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          actions: const [
            Image(
              image: AssetImage("assets/pet_care_info_logo.png"),
            ),
          ],
        ),
        body: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: ListView(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: 100,
                          width: 100,
                          child: FloatingActionButton(
                            backgroundColor: Colors.green[900],
                            onPressed: () {
                              toPetPage(hermitCrab);
                            },
                            child: const Text(
                              "Hermit Crab",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: 100,
                          width: 100,
                          child: FloatingActionButton(
                            onPressed: () {
                              toPetPage(crestedGecko);
                            },
                            backgroundColor: Colors.green[900],
                            child: const Text(
                              "Crested Gecko",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: 100,
                          width: 100,
                          child: FloatingActionButton(
                            onPressed: () {
                              toPetPage(leopardGecko);
                            },
                            backgroundColor: Colors.green[900],
                            child: const Text(
                              "Leopard Gecko",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: 100,
                          width: 100,
                          child: FloatingActionButton(
                            onPressed: () {
                              toPetPage(mourningGecko);
                            },
                            backgroundColor: Colors.green[900],
                            child: const Text(
                              "Mourning Gecko",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: 100,
                          width: 100,
                          child: FloatingActionButton(
                            onPressed: () {
                              toRecipesPage();
                            },
                            backgroundColor: Colors.green[900],
                            child: const Text(
                              "Special Recipes",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 100,
                      width: 100,
                      child: FloatingActionButton(
                        onPressed: () {
                          toPetPage(aquariumR);
                        },
                        backgroundColor: Colors.green[900],
                        child: const Text(
                          "Russell's Aquarium",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void toPetPage(Pet pet) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return Scaffold(
        appBar: AppBar(
          title: Text(pet.species),
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back),
          ),
        ),
        body: SafeArea(
          child: Center(
            child: ListView(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text("Food: ${pet.food}\n"),
                    Text("Hydration: ${pet.hydration}\n"),
                    Text("Humidity ${pet.humidity}\n"),
                    Text("Temperature ${pet.temperature}\n"),
                    Text("${pet.habitat}\n"),
                    Text(pet.other),
                    Image(image: pet.image),
                    Image(image: pet.habitatImage),
                  ],
                ),
              ),
            ]),
          ),
        ),
      );
    }));
  }

  void toRecipesPage() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Special Recipes"),
              leading: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.arrow_back),
              ),
            ),
            body: SafeArea(
              child: Center(
                child: Column(
                  children: const [
                    Text("Regular Pet Salad"),
                    Text("For Crested Geckos, Isopods, and Hermit Crabs"),
                    Text("Apple"),
                    Text("Banana"),
                    Text("Strawberries"),
                    Text("No Citrus\n"),
                    Text("Hermit Crab Salad"),
                    Text("Regular Pet Salad"),
                    Text("Light Green Romaine Lettuce"),
                    Text("Spinach"),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
