import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:vappr_tech_task/modules/home/views/home.view.dart';

class Routes {
  static const splashRoute = "/";
  static const homeRoute = "/home";

  static final pages = [GetPage(name: homeRoute, page: () => const HomeView())];
}
