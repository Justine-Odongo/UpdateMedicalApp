
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
import 'package:test_tab/screens/form.dart';

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
     routes:
      {
        '/form':(context)=>CheckoutPage(),
    },
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