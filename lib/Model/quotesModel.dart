class QuoteModel {
  final String advice;

  QuoteModel({required this.advice});

  factory QuoteModel.fromJson(Map<String, dynamic> json) {
    return QuoteModel(
      advice: json['slip']['advice'],
    );
  }
}
