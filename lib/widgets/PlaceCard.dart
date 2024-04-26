// ignore_for_file: must_be_immutable, file_names

import 'package:egypt_visitors/const/const.dart';
import 'package:flutter/material.dart';

class PlaceCard extends StatelessWidget {
  int cityidx, placeidx;
  PlaceCard({super.key, required this.cityidx, required this.placeidx});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Welcome to ${places[cityidx]["name"]}"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                places[cityidx]["arr"][placeidx]["name"],
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: 250,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image:
                            AssetImage(places[cityidx]["arr"][placeidx]["img"]),
                        fit: BoxFit.cover),
                  ),
                  child: Image.asset(places[cityidx]["arr"][placeidx]["img"])),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                places[cityidx]["arr"][placeidx]["about"],
                style: const TextStyle(fontSize: 20),
              ),
            ),
          ],
        ));
  }
}
