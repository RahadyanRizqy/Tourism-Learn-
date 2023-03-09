import 'dart:core';

class Endpoint {
  static const apiScheme = 'https';
  static const apiHost = 'raw.githubusercontent.com';
  static const prefix = '/RahadyanRizqy/Tourism-Learn-/master/assets/';

  static Uri uri(String path, {required Map<String, dynamic> queryParameters}) {
    final uri = new Uri(
      scheme: apiScheme,
      host: apiHost,
      path: '$prefix$path',
      queryParameters: queryParameters,
    );
    return uri;
  }
}
