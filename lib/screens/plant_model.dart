class PlantModel {
  final String name;
  final String type;
  final String price;
  final String imageAsset;

  PlantModel({
    required this.name,
    required this.type,
    required this.price,
    required this.imageAsset,
  });
}

List<PlantModel> demoPlants = [
  PlantModel(
      name: "Peace Lily",
      type: "Indoor",
      price: "₹700",
      imageAsset: "assets/images/plant1.png"),
  PlantModel(
      name: "Snake Plant",
      type: "Indoor",
      price: "₹600",
      imageAsset: "assets/images/plant2.png"),
  PlantModel(
      name: "Areca Palm",
      type: "Outdoor",
      price: "₹900",
      imageAsset: "assets/images/plant3.png"),
];
