import 'package:get/get.dart';
import 'package:walleto_mobile/app/modules/balance/views/balance_view.dart';
import 'package:walleto_mobile/app/modules/home/views/home_view.dart';

class BottomnavigationController extends GetxController {
  RxInt CurrentIndex = 0.obs;

  final screens = [
    HomeView(),
    BalanceView(),
  ];

  SetIndex(index) {
    print(index);
    CurrentIndex.value = index;
    update();
  }
}
