import 'package:Stroll/stroll.dart';

class SplashController extends GetxController {
  
@override
  void onInit() {
    splashInit();
    super.onInit();
  }
}

splashInit() async {
  Future.delayed(3.seconds, () {Get.offAll(() => UserDashboardScreen());});
}