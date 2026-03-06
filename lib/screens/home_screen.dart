import 'detail_secreen.dart';

import 'package:flutter/material.dart';
import '../models/launch.dart';

class HomeScreen extends StatelessWidget {
  final List<Launch> launches = [
    Launch(
      id: "1",
      name: "Falcon 9",
      image: "https://images2.imgbox.com/40/e3/GypSkayF_o.png",
      details: "First rocket launch",
    ),
    Launch(
      id: "2",
      name: "Starship",
      image: "https://images2.imgbox.com/ab/79/Wyc9K7fv_o.png",
      details: "Second rocket launch",
    ),
  ];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SpaceX Launches"),
      ),
      body: ListView.builder(
        itemCount: launches.length,
        itemBuilder: (context, index) {
          final launch = launches[index];

          return ListTile(
            leading: Hero(
              tag: launch.id,
              child: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(launch.image),
              ),
            ),
            title: Text(launch.name),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(launch: launch),
                ),
              );
            },
          );
        },
      ),
    );
  }
}