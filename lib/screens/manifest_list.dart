import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ManifestList extends StatefulWidget {
  static const path = 'manifest';
  static const fullPath = '/$path';
  const ManifestList({super.key, required this.title, required this.roverName});
  final String title;
  final String roverName;

  @override
  State<ManifestList> createState() => _ManifestListState();
}

class _ManifestListState extends State<ManifestList> {
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Text(
        AppLocalizations.of(context)!.roverName(widget.roverName),
      ),
    );
  }
}
