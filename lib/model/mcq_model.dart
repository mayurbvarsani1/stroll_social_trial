
class AnswerModel {
  String? label;
  String? description;
  bool? isSelected;

  AnswerModel({
     this.label,
     this.description,
     this.isSelected
  });

  factory AnswerModel.fromJson(Map<String, dynamic> json) {
    return AnswerModel(
      label: json['label'],
      description: json['description'],
      isSelected: json['isSelected'],
    );
  }

  Map<String, dynamic> toJson() => {
    'label': label,
    'description': description,
    'isSelected': isSelected,
  };
}