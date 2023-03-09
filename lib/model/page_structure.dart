// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
import 'package:tourism/model/endpoint.dart';
import '../model/details.dart';

part 'page_structure.g.dart';

@JsonSerializable()
class Content {
  final String url;
  final String titleName;
  final List<Details>? listDetails;
  Content({
    required this.url,
    required this.titleName,
    required this.listDetails,
  });
  factory Content.fromJson(Map<String, dynamic> json) => _$ContentFromJson(json);

  // static Future<List<Content>> fetchAll() async {
  //   return 0;
  // }
}
