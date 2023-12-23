import 'package:get/get.dart';
import 'package:walleto_mobile/app/modules/profile/controllers/profile_controller.dart';

import '../controllers/profile_controller.dart';

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileController>(
      () => ProfileController(),
    );
  }
}
