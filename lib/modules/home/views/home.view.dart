import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vappr_tech_task/gen/assets.gen.dart';
import 'package:vappr_tech_task/modules/home/%20controllers/home.controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          forceMaterialTransparency: true,
          iconTheme: const IconThemeData(color: Colors.white),
          leading: const Icon(Icons.arrow_downward),
          actions: const [
            Icon(Icons.favorite_outline_outlined),
            SizedBox(width: 10)
          ],
        ),
        body: SizedBox.expand(
          child: Stack(
            fit: StackFit.expand,
            children: [
              Obx(() => AnimatedPadding(
                    padding: controller.showDestination.value
                        ? const EdgeInsets.only(bottom: 0)
                        : const EdgeInsets.only(bottom: 500.0),
                    duration: const Duration(milliseconds: 200),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                      child: Assets.images.eiffelTower.image(
                        fit: BoxFit.cover,
                      ),
                    ),
                  )),
              Obx(() => BackdropFilter(
                    filter: ImageFilter.blur(
                        sigmaX: controller.showDestination.value ? 0 : 5.0,
                        sigmaY: controller.showDestination.value ? 0 : 5.0),
                    child: Container(
                      decoration:
                          BoxDecoration(color: Colors.white.withOpacity(0.0)),
                    ),
                  )),
              NotificationListener(
                onNotification: controller.notificationHandler,
                child: DraggableScrollableSheet(
                  snap: true,
                  initialChildSize: 0.4,
                  minChildSize: 0.4,
                  maxChildSize: 0.88,
                  snapAnimationDuration: const Duration(milliseconds: 300),
                  builder: (BuildContext context,
                      ScrollController scrollController) {
                    return SingleChildScrollView(
                      controller: scrollController,
                      child: Column(
                        children: [
                          Obx(
                            () => Visibility(
                                visible: controller.showDestination.value,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 12),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        ElevatedButton(
                                            onPressed: () {},
                                            style: ButtonStyle(
                                                foregroundColor:
                                                    MaterialStateProperty.all(
                                                        Colors.white),
                                                backgroundColor:
                                                    MaterialStateProperty.all(
                                                        const Color(
                                                            0xFF18A957))),
                                            child: const Text('ON SALE')),
                                        const SizedBox(height: 5),
                                        const Text('Eiffel Tower',
                                            style: TextStyle(
                                                fontSize: 28,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white)),
                                        const Row(children: [
                                          Icon(Icons.location_on_outlined,
                                              color: Colors.white),
                                          Text('Paris, France',
                                              style: TextStyle(
                                                  color: Colors.white))
                                        ])
                                      ]),
                                )),
                          ),
                          const SizedBox(height: 20),
                          Obx(() {
                            return Container(
                              height: controller.showDestination.value
                                  ? height * 0.8
                                  : height * 0.88,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              width: double.maxFinite,
                              clipBehavior: Clip.antiAlias,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(60),
                                    topRight: Radius.circular(60),
                                  )),
                              child: Column(children: [
                                Container(
                                    margin: const EdgeInsets.only(
                                        top: 5, bottom: 30),
                                    decoration: BoxDecoration(
                                        color: Colors.grey.shade300,
                                        borderRadius: BorderRadius.circular(2)),
                                    height: 5,
                                    width: 50),
                                SizedBox(
                                  height: 120,
                                  child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount:
                                          controller.eiffelTowerImages.length,
                                      itemBuilder:
                                          (BuildContext context, int i) {
                                        return Container(
                                          width: 100,
                                          margin: EdgeInsets.only(
                                              left: i != 0 ? 20 : 0,
                                              right: controller
                                                              .eiffelTowerImages
                                                              .length -
                                                          1 ==
                                                      i
                                                  ? 10
                                                  : 0),
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: AssetImage(controller
                                                    .eiffelTowerImages[i])),
                                            borderRadius:
                                                BorderRadius.circular(30),
                                          ),
                                        );
                                      }),
                                ),
                                const SizedBox(height: 20),
                                const Text(
                                    'Paris\' monument-lined boulevards, museums classical bistros and boutiques are enhanced by a new wave of multimedia galleries, creative wine bars, design shops and tech start-ups.'),
                                const SizedBox(height: 20),
                                const Text('READ MORE'),
                                const SizedBox(height: 20),
                                Container(
                                  height: 170,
                                  width: double.maxFinite,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: Assets.images.imageSunset
                                              .provider())),
                                  child: Center(
                                    child: CircleAvatar(
                                        backgroundColor: Colors.amber.shade100
                                            .withOpacity(0.6),
                                        radius: 30,
                                        child: const Icon(
                                            Icons.play_arrow_outlined,
                                            size: 50,
                                            color: Colors.white)),
                                  ),
                                ),
                                const SizedBox(height: 20),
                                const Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text('Top Sight',
                                      style: TextStyle(fontSize: 24)),
                                ),
                                const SizedBox(height: 20),
                                Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Assets.images.tower3.image(
                                        fit: BoxFit.cover,
                                        height: 100,
                                        width: 180,
                                      ),
                                    ),
                                    const SizedBox(width: 20),
                                    const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Musée du Louvre',
                                          style: TextStyle(fontSize: 18),
                                        ),
                                        Text(
                                          'Top choice museum in\nLouvre & Lis Hales',
                                          style: TextStyle(fontSize: 10),
                                        ),
                                        SizedBox(height: 20),
                                      ],
                                    ),
                                  ],
                                ),
                              ]),
                            );
                          }),
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Obx(() => FloatingActionButton.extended(
            backgroundColor: const Color(0xFF202A44),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            onPressed: () {},
            label: AnimatedSwitcher(
              duration: const Duration(milliseconds: 200),
              transitionBuilder: (Widget child, Animation<double> animation) =>
                  FadeTransition(
                opacity: animation,
                child: SizeTransition(
                  sizeFactor: animation,
                  axis: Axis.horizontal,
                  child: child,
                ),
              ),
              child: controller.showDestination.value
                  ? Assets.icons.planeIcon.image(height: 50, width: 40)
                  : Row(
                      children: [
                        Assets.icons.planeIcon.image(height: 50),
                        const SizedBox(width: 20),
                        const Text('SEARCH FLIGHTS',
                            style: TextStyle(color: Colors.white)),
                        const SizedBox(width: 20),
                        ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all(Colors.white),
                                backgroundColor: MaterialStateProperty.all(
                                    const Color(0xFF18A957))),
                            child: const Text('ON SALE'))
                      ],
                    ),
            ))));
  }
}
