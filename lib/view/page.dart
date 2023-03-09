// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:tourism/model/article.dart';
import 'package:tourism/model/styles.dart';
import '../model/page_structure.dart';

// class MyPage extends StatelessWidget {
//   final Content content;

//   const MyPage(this.content);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(title: Text(content.titleName, style: MyStyle.articleHeader),),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: _renderPage(content),
//         )
//     );
//   }

//   // List<Widget> _renderFacts(Content content) {
//   //   final result = <Widget>[];
//   //   result.add(_sectionThumbnail(content.url));
//   //   for (int i = 0; i < content.listDetails!.length; i++) {
//   //     result.add(_sectionTitle(content.listDetails![i].heading));
//   //     result.add(_sectionText(content.listDetails![i].article));
//   //   }
//   //   return result;
//   // }
//   // CHAT GPT Provided
//   List<Widget> _renderPage(Content content) {
//   final List<Widget> result = <Widget>[];
//   result.add(_sectionThumbnail(content.url));
//   if (content.listDetails != null) {
//     for (int i = 0; i < content.listDetails!.length; i++) {
//       result.add(_sectionTitle(content.listDetails?[i].heading ?? ''));
//       result.add(_sectionText(content.listDetails?[i].article ?? ''));
//     }
//   }
//   return result;
// }

//   Widget _sectionTitle(String text) {
//     return Container(
//       padding: const EdgeInsets.all(15.0),
//       child: Text(text,
//         textAlign: TextAlign.left,
//         style: MyStyle.largeHeader, 
//       )
//     );
//   }

//   Widget _sectionText(String text) {
//     return Container(
//       padding: const EdgeInsets.all(15.0),
//       child: Text(text,
//         textAlign: TextAlign.left,
//         style: MyStyle.articleText,
//         )
//     );
//   }

//   Widget _sectionThumbnail(String url) {
//     return Container(
//       constraints: BoxConstraints.tight(const Size(0, 500)),
//       child: Image.network(
//         url,
//         alignment: Alignment(1, 0.25),
//         fit: BoxFit.fitWidth,
//         ),
//     );
//   }
// }

class MyPageID extends StatelessWidget {
  final int contentID;

  const MyPageID(this.contentID);
  
  @override
  Widget build(BuildContext context) {
    Content content = ListArticle.fetchID(contentID);
    return Scaffold(
        appBar: AppBar(title: Text(content.titleName, style: MyStyle.largeHeader)),
        body: SingleChildScrollView(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: _renderPage(content),
        )
      ),  
    );
  }

  List<Widget> _renderPage(Content content) {
    final List<Widget> result = <Widget>[];
    result.add(_sectionThumbnail(content.url));
    if (content.listDetails != null) {
      for (int i = 0; i < content.listDetails!.length; i++) {
        result.add(_sectionTitle(content.listDetails?[i].heading ?? ''));
        result.add(_sectionText(content.listDetails?[i].article ?? ''));
      }
    }
    return result;
  }

  Widget _sectionTitle(String text) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      child: Text(text,
        textAlign: TextAlign.left,
        style: MyStyle.largeHeader, 
      )
    );
  }

  Widget _sectionText(String text) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      child: Text(text,
        textAlign: TextAlign.left,
        style: MyStyle.articleText,
        )
    );
  }

  Widget _sectionThumbnail(String url) {
    return Image.network(
        url,
        alignment: const Alignment(1, 0.25),
        fit: BoxFit.fitWidth,
    );
  }

}