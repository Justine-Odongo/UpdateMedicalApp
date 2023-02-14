// import 'package:flutter/material.dart';
// import 'NavBar.dart';
// void main() {
//   runApp(const MyApp());
// }
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.teal,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//   final String title;
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//
//   void _incrementCounter() {
//     setState(() {
//
//       _counter++;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       drawer: NavBar(),
//       appBar: AppBar(
//         title: Text('JC Clinic'),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }




import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:test_tab/model/navigation_item.dart';
import 'package:test_tab/page/favourites_page.dart';
import 'package:test_tab/page/notifications_page.dart';

import 'package:test_tab/page/people_page.dart';

import 'package:test_tab/page/header_page.dart';
import 'package:test_tab/page/plugins_page.dart';
import 'package:test_tab/page/updates_page.dart';
import 'package:test_tab/page/workflow_page.dart';
import 'package:test_tab/provider/navigation_provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:test_tab/components/icon_content.dart';
import 'package:test_tab/components/reusable_card.dart';
import 'package:test_tab/constants.dart';
import 'package:test_tab/screens/results_page.dart';
import 'package:test_tab/components/bottom_button.dart';
import 'package:test_tab/components/round_icon_button.dart';
import 'package:test_tab/calculator_brain.dart';
import 'package:test_tab/screens/screen2.dart';
import 'package:test_tab/screens/nav_bar.dart';


Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Navigation Drawer';

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
    create: (context) => NavigationProvider(),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: MainPage(),
    ),
  );
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => buildPages();

  Widget buildPages() {
    final provider = Provider.of<NavigationProvider>(context);
    final navigationItem = provider.navigationItem;

    switch (navigationItem) {
      case NavigationItem.header:
        return HeaderPage();
      case NavigationItem.people:
        return PeoplePage();
      case NavigationItem.favourites:
        return FavouritesPage();
      case NavigationItem.workflow:
        return WorkflowPage();
      case NavigationItem.updates:
        return UpdatesPage();
      case NavigationItem.plugins:
        return PluginsPage();
      case NavigationItem.notifications:
        return NotificationsPage();
    }
  }
}