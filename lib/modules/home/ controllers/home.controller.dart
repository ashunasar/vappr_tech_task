import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:vappr_tech_task/gen/assets.gen.dart';
import 'package:vappr_tech_task/utils/app_logger.dart';

class HomeController extends GetxController {
  List eiffelTowerImages = [
    Assets.images.tower1.path,
    Assets.images.tower2.path,
    Assets.images.tower4.path,
    Assets.images.tower5.path,
    Assets.images.tower3.path
  ];

  RxBool showDestination = RxBool(true);

  DraggableScrollableController draggableScrollableController =
      DraggableScrollableController();

  bool notificationHandler(DraggableScrollableNotification val) {
    AppLogger.printLog('maxExtent is ${val.maxExtent}');
    AppLogger.printLog('minExtent is ${val.minExtent}');
    AppLogger.printLog('extent is ${val.extent}');

    showDestination(val.extent <= 0.61);

    return false;
  }
}
