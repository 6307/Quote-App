import 'package:get/get.dart';

import '../ViewModel/QuoteController.dart';

class QuoteBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => QuoteController());
  }
}
