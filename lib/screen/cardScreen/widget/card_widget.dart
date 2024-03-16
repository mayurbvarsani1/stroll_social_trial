
import 'package:Stroll/stroll.dart';

class CardWidget extends StatelessWidget {
  CardWidget({super.key});
  CardController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CardController>(
        id: "card_loader",
      builder: (controller) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    appSizedBox(height: 9.86.h),
                    Container(
                      margin: EdgeInsets.only(left: 3.695.h),
                      padding: EdgeInsets.only(left: 8.53.w,right: 4.8.w,top:1.33.w,bottom: 1.33.w),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: ColorRes.appBlack2),
                      child: Text(
                        "Angelina, 28",
                        style: styleW500S12.copyWith(
                            fontSize: 8.8.sp, color: ColorRes.white),
                      ),
                    ),

                    Positioned(
                      top: -0.862.h,
                      child: Container(
                        alignment: Alignment.center,
                        height: 7.39.h,
                        width: 7.39.h,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: ColorRes.appBlack2),
                        child: Image.asset(
                          AssetRes.userProfileImage,
                          width: 5.h,
                          height: 5.h,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 2.4630.h + 1.478.h,
                      left: 7.39.h + 2.4.w,
                      child:   Text(
                        "What is your favorite time\nof the day?",
                        style: styleW500S18.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp,
                            color: ColorRes.white),
                      ),)
                  ],
                ),
              ],
            ),
            appSizedBox(height: 1.10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "“Mine is definitely the peace in the morning.”",
                  textAlign: TextAlign.center,
                  style: styleW400S12.copyWith(
                    color: ColorRes.appGray5,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
            appSizedBox(height: 1.7241.h),
            Wrap(
              runSpacing: 3.2.w,
              spacing: 3.2.w,
              children: controller.answerData.map((answerData) {
                return AnswerContainer(
                  label: answerData.label ?? '',
                  selectedContainerColor: ColorRes.appPurple,
                  description: answerData.description ?? '',
                  selectedBorderColor: ColorRes.appPurple,
                  isSelected: answerData.isSelected ?? false,
                  onTap: () {
                    for (var item in controller.answerData) {item.isSelected = false;}
                    answerData.isSelected = true;
                    controller.update(["card_loader"]);

                  },
                );
              }).toList(),
            ),
            appSizedBox(height: 1.5546.h),

            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Pick your option.\nSee who has a similar mind.",
                  style: styleW400S12.copyWith(
                    color: ColorRes.white2,
                  ),
                ),
                const Spacer(),
                Container(
                  height: 5.91.h,
                  alignment: Alignment.center,
                  width: 5.91.h,
                  decoration: BoxDecoration(shape: BoxShape.circle,
                      border: Border.all(color: ColorRes.appPurple)),
                  child: Image.asset(
                    AssetRes.micIcon,
                    width: 4.83.w,
                    height: 6.92.w,
                  ),
                ),
                appSizedBox(width: 1.5.w),
                Container(
                  height: 5.91.h,
                  width: 5.91.h,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: ColorRes.appPurple),
                  child: Image.asset(AssetRes.arrowIcon),
                )
              ],
            ),
            appSizedBox(height: 1.2.h),

          ],
        );
      }
    );
  }
}
