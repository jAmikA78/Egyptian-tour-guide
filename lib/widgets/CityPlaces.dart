// ignore_for_file: file_names

import 'package:egypt_visitors/const/const.dart';
import 'package:egypt_visitors/widgets/PlaceCard.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CityPlaces extends StatelessWidget {
  int idx;
  CityPlaces({required this.idx, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(places[idx]["name"]),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: ListView.builder(
          itemCount: places[idx]["arr"].length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            PlaceCard(cityidx: idx, placeidx: index)));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.green[200],
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        places[idx]["arr"][index]["img"],
                        height: 200,
                        width: 350,
                        fit: BoxFit.fill,
                      ),
                      Text(
                        places[idx]["arr"][index]["name"],
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ));
  }
}
