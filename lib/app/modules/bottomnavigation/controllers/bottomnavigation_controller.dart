import 'package:get/get.dart';
import 'package:walleto_mobile/app/modules/balance/views/balance_view.dart';
import 'package:walleto_mobile/app/modules/home/views/home_view.dart';
import 'package:walleto_mobile/app/modules/profile/views/profile_view.dart';
import 'package:walleto_mobile/app/modules/notification/views/notification_view.dart';

class BottomnavigationController extends GetxController {
  RxInt CurrentIndex = 0.obs;

  final screens = [
    HomeView(),
    BalanceView(),
    NotificationView(),
    ProfileView(),
  ];

  SetIndex(index) {
    print(index);
    CurrentIndex.value = index;
    update();
  }
}
