import 'package:Stroll/stroll.dart';

class AppInkWell extends StatelessWidget {
  final VoidCallback? onTap;
  final Widget? child;
  const AppInkWell({super.key,this.onTap,required this.child});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: onTap,
      child: child,
    );
  }
}
