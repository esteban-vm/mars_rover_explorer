import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rover_explorer/models/rover.dart';
import 'package:rover_explorer/screens/manifest_list.dart';

class RoverItem extends StatelessWidget {
  const RoverItem({super.key, required this.rover});
  final Rover rover;

  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GestureDetector(
        onTap: () {
          context.push('${ManifestList.fullPath}/${rover.name}');
        },
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    rover.name,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Image.asset(rover.image),
                const Text(
                  'Credit: NASA/JPL',
                  style: TextStyle(fontSize: 11.0),
                ),
                Text(
                  'Landing date: ${rover.landingDate}',
                  style: const TextStyle(fontSize: 12.0),
                ),
                Text(
                  'Distance traveled: ${rover.distance}',
                  style: const TextStyle(fontSize: 12.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
