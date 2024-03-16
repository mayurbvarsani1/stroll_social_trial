import 'package:Stroll/stroll.dart';

class CardController extends GetxController {

  List<AnswerModel> answerData = [
    AnswerModel(label: "A",description:"The peace in the early mornings",isSelected: false),
    AnswerModel(label: "B",description:"The magical golden hours",isSelected: false),
    AnswerModel(label: "C",description:"Wind-down time after dinners",isSelected: false),
    AnswerModel(label: "D",description:"The serenity past midnight",isSelected: true),

  ];
}
