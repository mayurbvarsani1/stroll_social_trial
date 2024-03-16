

import 'package:Stroll/stroll.dart';

class UserDashboardController extends GetxController {
  late BottomBarModel currentTab;
  DateTime? currentBackPressTime;
  List<BottomBarModel> screenList = [
    BottomBarModel(
      image: AssetRes.cardIcon,
      title: "Card",
      index: 0,
      screen: CardScreen(),
    ),
    BottomBarModel(
      image: AssetRes.bonfireIcon,
      title: "Fire",
      index: 1,
      screen:Container(color: ColorRes.black),
    ),
    BottomBarModel(
      title: "Chat",
      image: AssetRes.chatIcon,
      index: 2,
      screen: Container(color: ColorRes.black),
    ),
    BottomBarModel(
      title: "Profile",
      image: AssetRes.profileIcon,
      index: 3,
      screen: Container(color: ColorRes.black),
    ),

  ];

  @override
  void onInit() {
    currentTab = screenList.first;
    super.onInit();
  }

  bool onWillPop(bool didPop) {
    if(currentTab.index != 0 ){
      currentTab = screenList.first;
      update(['bottom_bar']);
      return true;
    }else {
      DateTime now = DateTime.now();
      if (currentBackPressTime == null || now.difference(currentBackPressTime!) > const Duration(seconds: 2)) {
        currentBackPressTime = now;
        toastMsg('Press back again to exit the app', gravity: ToastGravity.TOP);
        return true;
      }
      SystemChannels.platform.invokeMethod('SystemNavigator.pop');
      return false;
    }
  }
  void onBottomBarChange(BottomBarModel model) {
    currentTab = model;
    update(['bottom_bar']);
  }
}
