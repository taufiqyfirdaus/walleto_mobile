import 'package:get/get.dart';

import '../controllers/scan_controller.dart';

class ScanViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ScanController>(
      () => ScanController(),
    );
  }
}
