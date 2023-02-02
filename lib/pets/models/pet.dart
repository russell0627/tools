import 'package:flutter/cupertino.dart';

class Pet {
  final String species;
  final String food;
  final String hydration;
  final String humidity;
  final String temperature;
  final String habitat;
  final String other;
  final AssetImage image;
  final AssetImage habitatImage;

  Pet({
    required this.species,
    required this.food,
    required this.hydration,
    required this.humidity,
    required this.temperature,
    required this.habitat,
    this.other = "",
    required this.image,
    required this.habitatImage,
  });
}

enum Gender {
  male,
  female,
  unknown,
}
