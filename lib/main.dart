import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:farmicon_task/UI/NetworkPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: NetworkPage(),
  ));
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//    MyHomePage({super.key, required this.title});
//   final String title;
//   // final NavigationItems = <Widget>[
//   //   Icon(Icons.qr_code_scanner),
//   //   ImageIcon(icon),
//   // ];
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//
//         title: Text(widget.title),
//       ),
//       bottomNavigationBar: CurvedNavigationBar(
//
//       ),
//     );
//   }
// }
