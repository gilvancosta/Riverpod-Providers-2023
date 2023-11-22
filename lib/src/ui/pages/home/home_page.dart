import 'package:flutter/material.dart';

import '../../../core/widgets/menu/navigation_drawer/navigation_drawer_widget.dart';
import 'widgets/List_view_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // static const String name = 'home_screen';

  @override
  Widget build(BuildContext context) {
    //  final scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      // ignore: prefer_const_constructors
      drawer: NavigationDrawerWidget(),
      body: const ListViewWidget(),
    );
  }
}
