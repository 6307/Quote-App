import 'package:get/get.dart';

import '../View/QuotesData.dart';

class AppRoutes {
  static final routes = [
    GetPage(name: "/", page: () => QuoteView()),
  ];
}
