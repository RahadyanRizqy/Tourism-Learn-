// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_structure.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Content _$ContentFromJson(Map<String, dynamic> json) => Content(
      url: json['url'] as String,
      titleName: json['titleName'] as String,
      listDetails: (json['listDetails'] as List<dynamic>?)
          ?.map((e) => Details.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ContentToJson(Content instance) => <String, dynamic>{
      'url': instance.url,
      'titleName': instance.titleName,
      'listDetails': instance.listDetails,
    };
