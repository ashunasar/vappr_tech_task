// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:vappr_tech_task/gen/assets.gen.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        forceMaterialTransparency: true,
        iconTheme: IconThemeData(color: Colors.white),
        leading: Icon(Icons.arrow_downward),
        actions: [Icon(Icons.favorite_outline_outlined), SizedBox(width: 10)],
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: Assets.images.eiffelTower.provider())),
        child: SizedBox.expand(
          child: Stack(
            children: [
              DraggableScrollableSheet(
                initialChildSize: 0.4,
                minChildSize: 0.4,
                maxChildSize: 0.88,
                controller: DraggableScrollableController(),
                builder:
                    (BuildContext context, ScrollController scrollController) {
                  return SingleChildScrollView(
                    controller: scrollController,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ElevatedButton(
                                    onPressed: () {},
                                    style: ButtonStyle(
                                        foregroundColor:
                                            MaterialStateProperty.all(
                                                Colors.white),
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Color(0xFF18A957))),
                                    child: Text('ON SALE')),
                                SizedBox(height: 5),
                                Text('Eiffel Tower',
                                    style: TextStyle(
                                        fontSize: 28,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                                Row(children: [
                                  Icon(Icons.location_on_outlined,
                                      color: Colors.white),
                                  Text('Paris, France',
                                      style: TextStyle(
                                          // fontSize: 28,
                                          // fontWeight: FontWeight.bold,
                                          color: Colors.white))
                                ])
                              ]),
                        ),
                        SizedBox(height: 20),
                        Container(color: Colors.red, height: 200),
                        Container(color: Colors.blue, height: 200),
                        Container(color: Colors.green, height: 200),
                      ],
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
