// import 'dart:convert';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:tourism/model/page_structure.dart';

// void main() {
//   test('Test content desentrialization', () async {
    
//     final vacations = await Content.fetchAll();
//     for (var vacation in vacations) {
//       expect(vacation.id, greaterThan(0));
//       expect(vacation.titleName, hasLength(greaterThan(0)));
//       expect(vacation.url, hasLength(greaterThan(0)));
      
//       final fetchedContent = await Content.fetchByID(vacation.id);
//       expect(fetchedContent.titleName, equals(vacation.titleName));
//       expect(fetchedContent.url, equals(vacation.url));    
//       expect(fetchedContent.listDetails, hasLength(greaterThan(0)));
//     } 
//     // const String contentJson = 
//     // '{ "name" : "Ranu Bedali", "url" : "https://cdn2.tstatic.net/tribunnewswiki/foto/bank/images/Ranu-Bedali.jpg", "listDetails" : [ {"heading" : "Profil singkat", "article" : "Ranu Bedali adalah salah satu obyek wisata alam yang terdapat di Kabupaten Lumajang. Ranu Bedali berada di ketinggian 700 meter di atas permukaan laut. Luas dari Ranu Bedali sekitar 25 hektar dan kedalamannya 28 meter. Ranu Bedali merupakan rangkaian dari tiga danau yakni Ranu Bedali, Ranu Klakah dan Ranu Pakis."} ]}';

//     // final Map<String, dynamic> contentJsonDecode = json.decode(contentJson) as Map<String, dynamic>;

//     // expect("Ranu Bedali", equals(contentJsonDecode['name']));

//     // final aContent = Content.fromJson(contentJsonDecode);

//     // expect(aContent.titleName, equals(contentJsonDecode['name']));
//     // expect(aContent.url, equals(contentJsonDecode['url']));

//   });

//   // const Map<String, dynamic> jsonPage = {
//   //   "name" : "Ranu Bedali",
//   //   "url" : "https://cdn2.tstatic.net/tribunnewswiki/foto/bank/images/Ranu-Bedali.jpg",
//   //   "listDetails" : [{"heading" : "Profil singkat", "article" : "Ranu Bedali adalah salah satu obyek wisata alam yang terdapat di Kabupaten Lumajang. Ranu Bedali berada di ketinggian 700 meter di atas permukaan laut. Luas dari Ranu Bedali sekitar 25 hektar dan kedalamannya 28 meter. Ranu Bedali merupakan rangkaian dari tiga danau yakni Ranu Bedali, Ranu Klakah dan Ranu Pakis."}]
//   // };
// }

import 'package:test/test.dart';
import 'package:tourism/model/page_structure.dart';
void main() {
  test('test /locations and /locations/:id', () async {
    final locations = await Content.fetchAll();
    for (var location in locations) {
      expect(location.id, greaterThan(0));
      expect(location.titleName, hasLength(greaterThan(0)));
      expect(location.url, hasLength(greaterThan(0)));

      final fetchedLocation = await Content.fetchByID(location.id);
      expect(fetchedLocation.titleName, equals(location.titleName));
      expect(fetchedLocation.url, equals(location.url));
      expect(fetchedLocation.listDetails, hasLength(greaterThan(0)));
    }
  });
}
