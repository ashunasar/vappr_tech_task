import 'package:get/get.dart';
import 'package:vappr_tech_task/modules/home/%20controllers/home.controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
