import 'package:json_annotation/json_annotation.dart';
import 'package:http/http.dart' as http;
import './details.dart';
import './endpoint.dart';
import 'dart:convert';

part 'page_structure.g.dart';

@JsonSerializable()
class Content {
  final int id;
  final String titleName;
  final String url;
  final List<Details>? listDetails;
  Content(
      {required this.id,
      required this.titleName,
      required this.url,
      required this.listDetails});

  factory Content.fromJson(Map<String, dynamic> json) =>
      _$ContentFromJson(json);

  static Future<List<Content>> fetchAll() async {
    var uri = Endpoint.uri('/api_example.txt', queryParameters: {});

    final resp = await http.get(uri);

    if (resp.statusCode != 200) {
      throw (resp.body);
    }
    List<Content> list = <Content>[];
    for (var jsonItem in json.decode(resp.body)) {
      list.add(Content.fromJson(jsonItem));
    }
    return list;
  }

  static Future<Content> fetchByID(int id) async {
    var uri = Endpoint.uri('/api_example.txt/$id', queryParameters: {});

    final resp = await http.get(uri);

    if (resp.statusCode != 200) {
      throw (resp.body);
    }
    final Map<String, dynamic> itemMap = json.decode(resp.body);
    return Content.fromJson(itemMap);
  }
}
