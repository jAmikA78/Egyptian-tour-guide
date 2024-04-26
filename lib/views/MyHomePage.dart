// ignore_for_file: file_names

import 'package:egypt_visitors/const/const.dart';
import 'package:egypt_visitors/widgets/CityCard.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome to Egypt"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: places.length,
        itemBuilder: (BuildContext context, int index) {
          return CityCard(idx: index);
        },
      ),
    );
  }
}
