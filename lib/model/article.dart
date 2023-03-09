import 'package:flutter/src/widgets/placeholder.dart';
import 'details.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'page_structure.dart';

// class FirstArticle extends Content {
//   FirstArticle({required super.titleName, required super.listDetails});

//   static Content fetchAny () {
//     return Content(
//       titleName: 'Gunung Semeru', 
//       listDetails: <Details>[
//         Details(heading: 'Profil Singkat Gunung Semeru', article: 'Gunung Semeru atau Gunung Meru adalah sebuah gunung berapi kerucut di Jawa Timur, Indonesia. Gunung Semeru merupakan gunung tertinggi di Pulau Jawa, dengan puncaknya Mahameru, 3.676 meter dari permukaan laut (mdpl).'),

//         Details(heading: 'Sejarah Singkat Gunung Semeru', article: 'Orang Eropa pertama yang mendaki gunung ini adalah Clignet dan Winny Brigita (1838), seorang ahli geologi berkebangsaan Belanda. Mereka menempuh jalur dari sebelah barat daya melalui Widodaren.')
//       ]);
//   }
// }


class ListArticle extends Content {
  ListArticle({required super.id, required super.url, required super.titleName, required super.listDetails});

  static final List<Content> contents = [
    Content(
      id: 1,
      url: "https://cdn1-production-images-kly.akamaized.net/hfHgS2SEZdD3ASTa1bGlvKKvAbE=/640x360/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/933707/original/051644500_1437558393-20150722-Gunung-berstatus-waspada-Indonesia-Gunung-Semeru.jpg",
      titleName: 'Gunung Semeru', 
      listDetails: <Details>[
        Details(heading: 'Profil singkat', article: 'Gunung Semeru atau Gunung Meru adalah sebuah gunung berapi kerucut di Jawa Timur, Indonesia. Gunung Semeru merupakan gunung tertinggi di Pulau Jawa, dengan puncaknya Mahameru, 3.676 meter dari permukaan laut (mdpl).'),

        Details(heading: 'Sejarah singkat', article: 'Orang Eropa pertama yang mendaki gunung ini adalah Clignet dan Winny Brigita (1838), seorang ahli geologi berkebangsaan Belanda. Mereka menempuh jalur dari sebelah barat daya melalui Widodaren.')
      ]),
    
    Content(
      id: 2,
      url: "https://www.tempatwisata.pro/media/uploads/3088/0e29c42518e720c0dacb83c112df9458.jpg",
      titleName: 'Ranu Pane', 
      listDetails: <Details>[
        Details(heading: 'Profil singkat', article: 'Ranupani merupakan daerah paling populer bagi pendaki gunung semeru. Berada dalam ketinggian 2100 mdpl, Desa ranupani adalah desa terakhir pendakian gunung semeru. Setiap hari dengan mobil, jeep, dan motor, begitu banyak wisatawan yang menuju ke desa ranupani, baik dari arah malang maupun dari arah lumajang. Desa ranupani terletak dengan batas sebagai berikut: Sebelah utara adalah desa ngadas, kabupaten malang.'),
        
        Details(heading: 'Fakta menarik', article: '''Desa Ranu Pani dihuni oleh masyarakat asli Suku Tengger. Nama Tengger agaknya mengingatkan kita pada cerita rakyat Roro Anteng dan Joko Seger yang dipercaya masyarakat setempat sebagai leluhurnya.
        Setidaknya ada tiga teori di balik nama Tengger. Pertama, tengger berarti berdiri tegak yang melambangkan watak orang Tengger yang berbudi pekerti luhur dan tercermin dalam setiap aspek kehidupan. Kedua, tengger berarti pegunungan, sesuai dengan kondisi daerah kediaman suku tersebut. Ketiga, namanya berasal dari sang leluhur yaitu Roro Anteng dan Joko Seger.''')
      ]),
    
    Content(
      id: 3,
      url: "https://medicaltourism.id/wp-content/uploads/2021/04/coban-sewu-3.jpg", 
      titleName: "Coban Sewu", 
      listDetails: <Details>[
        Details(heading: 'Profil singkat', article: 'Coban Sewu adalah sebuah air terjun berketinggian sekitar 120 meter. Air terjun ini berbatasan dengan Kabupaten Lumajang dan Kabupaten Malang, Provinsi Jawa Timur. Air Terjun Tumpak Sewu memiliki aliran air yang menyerupai tirai sehingga termasuk dalam tipe air terjun Tiered.'),

        Details(heading: 'Fakta menarik', article: 'Air Terjun Tumpak Sewu ditemukan beberapa tahun yang lalu oleh sekumpulan pemuda di daerah perbatasan antara Lumajang dan Malang. Saat itu, terdapat sekitar 20 orang pemuda yang tengah kesulitan mencari pekerjaan. Mereka lantas memutuskan untuk mencari sebuah air terjun baru yang bisa dibuka menjadi sebuah lokasi wisata.')
      ]),

    Content(
      id: 4,
      url: "https://asset.kompas.com/crops/YEMbKChtubAi0QEDmbhrPPM6XBg=/0x0:780x520/750x500/data/photo/2019/03/05/3643045560.jpg", 
      titleName: "B29 Lumajang Senduro", 
      listDetails: <Details>[
        Details(heading: 'Profil singkat', article: 'Puncak B.29 merupakan puncak tertinggi di kawasan lautan pasir Bromo dengan ketinggian + 2.900 mdpl. Terletak di Desa Argosari Kecamatan Senduro Kabupaten Lumajang.Tepatnya disisi tenggara Gunung Bromo dengan pemandangannya yang indah dan udaranya yang sangat sejuk serta panorama hamparan tanaman khas dataran tinggi berupa bawang pre, kubis kentang dan wortel, serta buah strawberry sehingga menjadikan kawasan obyek wisata ini sangat menawan dan luar biasa.'),

        Details(heading: 'Pesona B29', article: 'Berkunjung ke Puncak B29, ada banyak aktivitas menarik yang bisa anda jelajah bersama orang-orang tersayang. Selain menikmati keindahan pemandangan pegunungan yang ada di Kawasan Wisata Bromo Tengger Semeru. Masih banyak spot instagenic lainnya yang sayang untuk dilewatkan ketika jelajah keindahan Puncak B29. Seperti melihat sunrise terbaik yang disuguhkan Puncak B29, pesonanya akan menghipnotis siapa saja.')
      ]),
  ];

  static List<Content> fetchAll() {
    return contents;
  }

  static Content fetchID(int index) {
    return contents[index];
  }

  static int fetcher() {
    return 0;
  }
}