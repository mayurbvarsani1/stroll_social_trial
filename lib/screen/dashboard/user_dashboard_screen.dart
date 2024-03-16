

import 'package:Stroll/stroll.dart';


class UserDashboardScreen extends StatelessWidget {
  UserDashboardScreen({super.key});
  final UserDashboardController controller = Get.put(UserDashboardController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PopScope(
        canPop: false,
        onPopInvoked: controller.onWillPop,
        child: GetBuilder<UserDashboardController>(
          id: 'bottom_bar',
          builder: (con) {
            return controller.currentTab.screen ?? const SizedBox();
          },
        ),
      ),
      bottomNavigationBar: GetBuilder<UserDashboardController>(
          id: "bottom_bar",
          builder: (con) {
            return BottomBar(
              currentValue: controller.currentTab,
              dataList: controller.screenList,
              onChange: controller.onBottomBarChange,
            );
          }),
    );
  }
}
