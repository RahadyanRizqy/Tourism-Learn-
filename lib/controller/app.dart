import 'package:flutter/material.dart';
import '../model/article.dart';
import '../model/page_list.dart';
import '../model/page_structure.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Content> articles = ListArticle.fetchAll();
    return MaterialApp(home: MyPageList(articles));
    // return MaterialApp(
    //     home: Scaffold(
    //   appBar: AppBar(title: const Text('Example')),
    // body: Center(
    //   child: Column(
    //     children: _myWidgets(),
    //   ),
    // )));
  }

  // return MaterialApp(home: Scaffold(
  //   appBar: AppBar(
  //       title: Text('Geeksforgeeks'),
  //       backgroundColor: Colors.greenAccent[400],
  //       leading: IconButton(
  //         icon: Icon(Icons.menu),
  //         tooltip: 'Menu',
  //         onPressed: () {},
  //       )),
  //   body: Center(
  //       child: Column(
  //     children: <Widget>[
  //       Container(
  //         child: Center(
  //           child: Text(
  //             'First widget',
  //             style: TextStyle(
  //               color: Colors.white,
  //             ),
  //           ),
  //         ),
  //         color: Colors.blue,
  //       ),
  //       Expanded(
  //         child: Container(
  //           child: Center(
  //             child: Text(
  //               'Second widget',
  //               style: TextStyle(
  //                 color: Colors.white,
  //               ),
  //             ),
  //           ),
  //           color: Colors.amber,
  //         ),
  //       ),
  //       Expanded(child: Container(
  //         child: Center(
  //           child: Text(
  //             'Third widget',
  //             style: TextStyle(
  //               color: Colors.white,
  //             ),
  //           ),
  //         ),
  //         color: Colors.orange,
  //       )),
  //       Expanded(child: Container(
  //         child: Center(
  //           child: Image.network("https://picsum.photos/id/426/400/600.jpg", fit: BoxFit.contain,)),))
  //     ],
  //   )),
  // ),
  // debugShowCheckedModeBanner: false,);}
  // List<Widget> _myWidgets() {
  //   final List<Widget> myList = <Widget>[];
  //   myList.add(_sectionThumbnail('https://picsum.photos/id/426/400/600.jpg'));
  //   myList.add(_sectionTitle('Test Title'));
  //   myList.add(_sectionText('Test Text'));
  //   return myList;
  // }
  
  // Widget _sectionTitle(String text) {
  //   return Expanded(child: Container(child: Center(
  //       // padding: const EdgeInsets.all(15.0),
  //       child: Text(
  //         text,
  //         textAlign: TextAlign.left,
  //         style: MyStyle.largeHeader,
  //       ))));
  // }

  // Widget _sectionText(String text) {
  //   return Expanded(child: Container(child: Center(
  //       // padding: const EdgeInsets.all(15.0),
  //       child: Text(
  //         text,
  //         textAlign: TextAlign.left,
  //         style: MyStyle.articleText,
  //       ))));
  // }

  // Widget _sectionThumbnail(String url) {
  //   return Expanded(child: Container(
  //       child: Center(
  //         child: Image.network(
  //         url,
  //       // alignment: Alignment(1, 0.25),
  //         fit: BoxFit.contain,
  //         ),
  //       )
  //   ));
  // }
}
