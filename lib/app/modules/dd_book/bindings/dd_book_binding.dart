import 'package:get/get.dart';

import '../controllers/dd_book_controller.dart';

class DdBookBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DdBookController>(
      () => DdBookController(),
    );
  }
}
