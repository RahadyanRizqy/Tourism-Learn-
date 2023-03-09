import 'package:json_annotation/json_annotation.dart';

part 'details.g.dart';

@JsonSerializable()
class Details {
  final String heading;
  final String article;
  Details({
    required this.heading,
    required this.article,
  });

  factory Details.fromJson(Map<String, dynamic> json) => _$DetailsFromJson(json);

  Map<String, dynamic> toJson() => {
    'heading' : heading,
    'article' : article,
  };
}