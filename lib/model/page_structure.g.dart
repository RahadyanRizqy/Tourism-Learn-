// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_structure.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Content _$ContentFromJson(Map<String, dynamic> json) {
    return Content(
      id: json['id'] as int,
      url: json['url'] as String,
      titleName: json['titleName'] as String,
      listDetails: (json['listDetails'] as List<dynamic>?)
          ?.map((e) => Details.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
}

Map<String, dynamic> _$ContentToJson(Content instance) => <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'titleName': instance.titleName,
      'listDetails': instance.listDetails,
    };
