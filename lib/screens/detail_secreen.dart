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
      body: Center(
        child: Text("Detalle del lanzamiento"),
      ),
    );
  }
}