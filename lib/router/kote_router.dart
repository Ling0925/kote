import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:kote/views/home/home.dart';
import 'package:kote/views/summary/summary.dart';

class KotePages {
  static var pages = [
    GetPage(name: "/", page: () => HomePage(),binding: HomeBinding()),
    GetPage(name: "/summarys", page: () => SummaryPage(),binding: SummaryBinding()),
  ];
}

class KoteRouters {
  static const String HOME = "/";
  static const String SUMMARYS = "/summarys";
}
