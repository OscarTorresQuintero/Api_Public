import 'package:flutter/material.dart';
import '../models/launch.dart';

class DetailScreen extends StatelessWidget {
  final Launch launch;

  const DetailScreen({super.key, required this.launch});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(launch.name),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),

          child: Column(
            children: [

              Hero(
                tag: launch.id,
                child: CircleAvatar(
                  radius: 70,
                  backgroundImage: NetworkImage(launch.image),
                ),
              ),

              const SizedBox(height: 30),

              Text(
                launch.name,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              Text(
                launch.details,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}