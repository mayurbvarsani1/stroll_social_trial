
import 'package:Stroll/stroll.dart';

class CardScreen extends StatelessWidget {
  CardScreen({super.key});

  CardController controller = Get.put(CardController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorRes.black,
      body: GetBuilder<CardController>(
        id: "card_loader",
        builder: (controller) {
          return Stack(
            children: [
              Image.asset(
                AssetRes.cardBackgroundImage,
                height: Get.height,
                width: Get.width,
                fit: BoxFit.fill,
              ),
              Padding(padding: EdgeInsets.symmetric(horizontal: AppPadding.horizontalPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    topBar(),
                    CardWidget(),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
  topBar(){
    return Column(
      children: [
        appSizedBox(height: 7.38.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Stroll Bonfire",
              style: styleW500S18.copyWith(
                color: ColorRes.appPurple1,
                fontWeight: FontWeight.bold,
                fontSize: 27.2.sp,
                shadows: [
                  Shadow(
                    color: ColorRes.black.withOpacity(0.2),
                    blurRadius: 20,
                    offset:  const Offset(0,2),

                  ),
                ],
              ),
            ),
            appSizedBox(width: 1.06.w),
            Icon(
              Icons.expand_more,
              color: ColorRes.icon,
              size: 2.66.h,
            ),
          ],
        ),
        appSizedBox(height: 0.53.h),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AssetRes.watchIcon,
              width: 3.47.w,
            ),
            appSizedBox(width: 1.w),
            Text(
              "22h 00m",
              style: styleW600S12.copyWith(color: ColorRes.white),
            ),
            appSizedBox(width: 2.5.w),
            Image.asset(
              AssetRes.user1Icon,
              width: 3.w,
              color: ColorRes.white,
            ),
            appSizedBox(width: 0.5.w),
            Text(
              "103",
              style: styleW600S12.copyWith(color: ColorRes.white),
            ),
          ],
        ),
      ],
    );
  }
}




class AnswerContainer extends StatelessWidget {
  final String label;
  final String description;
  final Color selectedBorderColor;
  final Color selectedContainerColor;
  final bool isSelected;
  final Function() onTap;

  const AnswerContainer({
    super.key,
    required this.label,
    required this.description,
    required this.selectedBorderColor,
    required this.selectedContainerColor,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return AppInkWell(
      onTap: onTap,
      child: Container(
        height: 7.09.h,
        width: (100.w-10.6666.w-5.2.w) / 2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            width: 2,
            color: isSelected ? selectedBorderColor : ColorRes.appContainer,
          ),
          color: ColorRes.appContainer,
        ),
        alignment: Alignment.center,
        child: Row(
          children: [
            SizedBox(width: 2.w ),
            Container(
              height: 5.53.h,
              width: 5.53.w ,
              decoration: BoxDecoration(
                color:  isSelected ? selectedContainerColor : ColorRes.appContainer,
                shape: BoxShape.circle,
                border: Border.all(color:isSelected ? selectedBorderColor : ColorRes.white1),
              ),
              alignment: Alignment.center,
              child: Text(
                label,
                style: styleW400S12.copyWith(
                  color: ColorRes.white1,
                  // fontSize: 10.sp,
                ),
              ),
            ),
            SizedBox(width: 2.w),
            Expanded(
              child: Text(
                description,
                style: styleW400S14.copyWith(
                  fontSize: 11.2.sp,
                  color: ColorRes.white1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}













