import 'package:flutter/material.dart';
import '../models/plant_model.dart';

class DetailScreen extends StatelessWidget {
  static const routeName = '/detail';

  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final PlantModel plant =
        ModalRoute.of(context)!.settings.arguments as PlantModel;

    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite_border),
            onPressed: () {},
          ),
        ],
        title: Text(plant.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Hero(
              tag: plant.name,
              child: Image.asset(
                plant.imageAsset,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              plant.name,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              plant.type,
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            ),
            Text(
              plant.price,
              style: const TextStyle(fontSize: 20, color: Colors.green),
            ),
            const SizedBox(height: 22),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _PlantStat(icon: Icons.wb_sunny_rounded, label: "Light", value: "50%"),
                _PlantStat(icon: Icons.water_drop, label: "Water", value: "250ml"),
                _PlantStat(icon: Icons.thermostat, label: "Temp", value: "25°C"),
              ],
            ),
            const SizedBox(height: 18),
            Text(
              "About ${plant.name}: This plant is known for its beauty and air purifying abilities. It thrives in moderate light and is easy to maintain. Read more...",
              style: const TextStyle(fontSize: 15),
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Back to Home'),
              style: ElevatedButton.styleFrom(minimumSize: const Size.fromHeight(45)),
            ),
          ],
        ),
      ),
    );
  }
}

class _PlantStat extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const _PlantStat({
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.green),
        const SizedBox(height: 3),
        Text(label, style: const TextStyle(fontSize: 13)),
        Text(value, style: const TextStyle(fontWeight: FontWeight.bold)),
      ],
    );
  }
}
