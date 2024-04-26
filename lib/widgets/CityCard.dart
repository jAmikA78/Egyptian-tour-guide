// ignore_for_file: file_names

import 'package:egypt_visitors/const/const.dart';
import 'package:egypt_visitors/widgets/CityPlaces.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CityCard extends StatelessWidget {
  int idx;
  CityCard({required this.idx, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => CityPlaces(idx: idx)));
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
                places[idx]['img'],
                height: 200,
                width: 350,
                fit: BoxFit.fill,
              ),
              Text(
                places[idx]['name'],
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
