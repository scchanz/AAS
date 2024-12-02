import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RecipePage(),
    );
  }
}

class RecipePage extends StatelessWidget {
  const RecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Strawberry Pavlova"),
        backgroundColor: Colors.green,
      ),
      body: Row(
        children: [
          // Left Column
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Strawberry Pavlova",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova. Pavlova features a crisp crust and soft, light inside, topped with fruit and whipped cream.",
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  const Row(
                    children: [
                      Icon(Icons.star, color: Colors.green),
                      Icon(Icons.star, color: Colors.green),
                      Icon(Icons.star, color: Colors.green),
                      Icon(Icons.star, color: Colors.green),
                      Icon(Icons.star_border, color: Colors.green),
                      SizedBox(width: 8),
                      Text("170 Reviews", style: TextStyle(fontSize: 16)),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildInfoColumn(Icons.timer, "Prep", "25 min"),
                      _buildInfoColumn(Icons.kitchen, "Cook", "1 hr"),
                      _buildInfoColumn(Icons.group, "Feeds", "4-6"),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // Right Image
          Expanded(
            flex: 3,
            child: Image.asset(
              'assets/cake.png', // Replace with your image asset
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }

  // Helper method to create information columns
  static Column _buildInfoColumn(IconData icon, String label, String value) {
    return Column(
      children: [
        Icon(icon, color: Colors.green),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 4),
        Text(value, style: const TextStyle(fontSize: 14)),
      ],
    );
  }
}