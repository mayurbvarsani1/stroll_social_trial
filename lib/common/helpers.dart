
import 'package:fluttertoast/fluttertoast.dart';

void toastMsg(String msg, {gravity = ToastGravity.CENTER,int timeInSecForIosWeb = 4}) {
  Fluttertoast.showToast(msg: msg, gravity: gravity, timeInSecForIosWeb: timeInSecForIosWeb);
}
