import 'package:flutter/material.dart';
import 'package:rover_explorer/models/rover_creator.dart';
import 'package:rover_explorer/widgets/rover_item.dart';

class RoverList extends StatefulWidget {
  static const path = '/';
  const RoverList({super.key, required this.title});
  final String title;

  @override
  State<RoverList> createState() => _RoverListState();
}

class _RoverListState extends State<RoverList> {
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView.builder(
        cacheExtent: 20.0,
        itemCount: rovers.length,
        controller: ScrollController(),
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        itemBuilder: (_, index) => RoverItem(rover: rovers[index]),
      ),
    );
  }
}
