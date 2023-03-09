import 'package:flutter/material.dart';
import 'styles.dart';
import 'page_structure.dart';
import '../view/page.dart';

// class MyPageList extends StatelessWidget {
//   final List<Content> listContent;

//   const MyPageList(this.listContent) : super(key: null);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//             title: const Text(
//           "Locations",
//           style: MyStyle.largeHeader,
//         )),
//         body: ListView.builder(
//             itemCount: listContent.length, itemBuilder: _pageTiles));
//   }

//   Widget _pageTiles(BuildContext context, int index) {
//     return ListTile(
//       contentPadding: const EdgeInsets.all(8),
//       leading: _contentThumbnail(listContent[index]),
//       title: _contentTitle(listContent[index]),
//       onTap: () =>
//           // print('>>> ${fetchArticle(index)}');
//           _navigateToPage(context, index),
//     );
//   }

//   void _navigateToPage(BuildContext context, int index) {
//     Navigator.push(context,
//         MaterialPageRoute(builder: (context) => MyPage(listContent[index])));
//   }

//   Widget _contentThumbnail(Content content) {
//     return Container(
//       constraints: const BoxConstraints.tightFor(width: 100),
//       child: Image.network(
//         content.url,
//         alignment: Alignment.topCenter,
//         fit: BoxFit.fitWidth,
//       ),
//     );
//   }

//   Widget _contentTitle(Content content) {
//     return Text(">>> ${content.titleName}", style: MyStyle.largeHeader);
//   }

//   // String fetchArticle(int index) {
//   //   var result = listContent[index].listDetails != null ? listContent[index].listDetails![0].article : 'Null';
//   //   return result;
//   // }
// }


class MyPageList extends StatelessWidget {
  final List<Content> listContent;

  const MyPageList(this.listContent) : super(key: null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text(
          "Locations",
          style: MyStyle.largeHeader,
        )),
        body: ListView.builder(
            itemCount: listContent.length, itemBuilder: _pageTiles));
  }

  Widget _pageTiles(BuildContext context, int index) {
    return ListTile(
      contentPadding: const EdgeInsets.all(8),
      leading: _contentThumbnail(listContent[index]),
      title: _contentTitle(listContent[index]),
      onTap: () =>
          // print('>>> ${fetchArticle(index)}');
          _navigateToPage(context, index),
    );
  }

  void _navigateToPage(BuildContext context, int contentID) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => MyPageID(contentID)));
  }

  Widget _contentThumbnail(Content content) {
    return Container(
      constraints: const BoxConstraints.tightFor(width: 100),
      child: Image.network(
        content.url,
        alignment: Alignment.topCenter,
        fit: BoxFit.fitWidth,
      ),
    );
  }

  Widget _contentTitle(Content content) {
    return Text(">>> ${content.titleName}", style: MyStyle.largeHeader);
  }

  // String fetchArticle(int index) {
  //   var result = listContent[index].listDetails != null ? listContent[index].listDetails![0].article : 'Null';
  //   return result;
  // }
}