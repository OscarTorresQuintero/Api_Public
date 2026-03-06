import 'package:flutter/material.dart';
import '../models/launch.dart';

class DetailScreen extends StatelessWidget {

  final Launch launch;

  const DetailScreen({super.key, required this.launch});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text(launch.name)),

      body: SingleChildScrollView(

        child: Column(

          children: [

            Hero(
              tag: launch.id,
              child: CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage(launch.image),
              ),
            ),

            SizedBox(height: 20),

            Text("Nombre: ${launch.name}"),
            Text("Detalles: ${launch.details}"),

          ],

        ),
      ),
    );
  }
}