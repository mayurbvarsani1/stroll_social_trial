import 'package:Stroll/stroll.dart';


class BottomBar extends StatelessWidget {
  final Function(BottomBarModel)? onChange;
  final BottomBarModel? currentValue;
  final List<BottomBarModel> dataList;
  final bool isSelected;

  const BottomBar(
      {super.key,
      this.onChange,
      this.dataList = const [],
      this.currentValue,
      this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BottomAppBar(
        height: 9.7290.h,
        color: ColorRes.appBlack3,
        surfaceTintColor: ColorRes.appBlack3,
        shape: const CircularNotchedRectangle(),
        padding: EdgeInsets.zero,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            bottomBar(dataList[0]),
            bottomBar(dataList[1]),
            bottomBar(dataList[2]),
            bottomBar(dataList[3]),
          ],
        ),
      ),
    );
  }

  Widget bottomBar(BottomBarModel model) {
    return Expanded(
      child: AppInkWell(
        onTap: (){
        if (onChange != null) {
          onChange!(model);
        }
        },
        child: Column(
          children: [
            appSizedBox(height: 1.5.h),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Image.asset(
                  model.image.toString(),
                  fit: BoxFit.fill,
                  height: 3.5.h,
                  color: currentValue == model ? ColorRes.appPurple2: null,
                ),
                if (model.index == 1)
                  Positioned(
                    top: 2,
                    right: -1.4.w,
                    child: Container(
                      height: 2.4.w,
                      width: 3.4.w,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(color: ColorRes.appBlack3, borderRadius: BorderRadius.circular(5)),
                      child: Container(
                        height: 1.6.w,
                        width: 2.4.w,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(color: ColorRes.appPurple2, borderRadius: BorderRadius.circular(5)),
                      ),
                    ),
                  ),
                if (model.index == 2)
                  Positioned(
                    top: 2,
                    right: -1.4.w,
                    child: Container(
                      height: 2.4.w,
                      width: 3.4.w,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(color: ColorRes.appBlack3, borderRadius: BorderRadius.circular(5)),
                      child: Container(
                        height: 1.6.w,
                        width: 2.4.w,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(color: ColorRes.appPurple2, borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          "10",
                          textAlign: TextAlign.center,
                          style: styleW500S14.copyWith(
                              fontWeight: FontWeight.bold,
                              color: ColorRes.black1, fontSize: 4.sp),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
