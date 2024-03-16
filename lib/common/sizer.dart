import 'package:Stroll/stroll.dart';
extension SizerExt on num {
  /// Calculates the height depending on the device's screen size
  ///
  /// Eg: 20.h -> will take 20% of the screen's height
  double get h => this * Get.height / 100;

  /// Calculates the width depending on the device's screen size
  ///
  /// Eg: 20.w -> will take 20% of the screen's width
  double get w => this * Get.width / 100;

  /// Calculates the sp (Scalable Pixel) depending on the device's screen size
  double get sp => this * (Get.width / 3) / 100;
}

Widget appSizedBox({double? width ,double? height,Widget? child}){
  return SizedBox(
    height: height,
    width: width,
    child: child,
  );
}

class AppPadding{
  static double horizontalPadding = 5.3333.w;
}
