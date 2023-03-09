import 'package:flutter/material.dart';
import 'controller/app.dart';
void main() {
  return runApp(const App());
}
  // kerja bagus
// Button example
// void main() => runApp(const MyApp()); 

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
 
//    // This widget is the root of your application.    
//    @override 
//    Widget build(BuildContext context) {
//       return MaterialApp(
//          title: 'Hello World Demo Application', 
//          theme: ThemeData( primarySwatch: Colors.blue,), 
//          home: const MyHomePage(title: 'Home page'), 
//       ); 
//    }
// }

// class MyHomePage extends StatelessWidget {
   
//    final String title; 
//   const MyHomePage({
//     Key? key,
//     required this.title,
//   }) : super(key: key);
   
//    // user defined function 
//   Future<void> _showDialog(BuildContext context) {
//     return showDialog<void>(
//       context: context, 
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: const Text('Tap Detection'),
//           content: const Text('Tap Detected!'),
//           actions: <Widget>[
//             TextButton(
//               onPressed: () => Navigator.of(context).pop(),
//               child: const Text('Close'),
//             ),
//             TextButton(
//               onPressed: () {}, 
//               child: const Text('Don\'t close!'),
//             )
//           ]
//         );
//       }
//     );
//   }

//   @override 
//   Widget build(BuildContext context) {
//     return Scaffold(
//           appBar: AppBar(title: Text(title),),
//           body: Center(
//               child: OutlinedButton(
//                 child: Text('Hello world!'),
//                 onPressed:() => {
//                   _showDialog(context)
//                 },
//               ),
//           ),
//       );
//     }
// }