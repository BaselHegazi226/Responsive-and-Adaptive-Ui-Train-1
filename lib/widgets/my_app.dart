import 'package:flutter/material.dart';

import 'custom_drawer.dart';
import 'my_app_body.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Scaffold(
        backgroundColor: Colors.grey.shade300,
        key: scaffoldKey,
        drawer: const CustomDrawer(),
        appBar: size.width - 16 < 900 ? customAppBar() : null,
        body: MyAppBody(),
      ),
    );
  }

  AppBar customAppBar() {
    return AppBar(
      backgroundColor: Colors.black,
      leading: IconButton(
        onPressed: () {
          scaffoldKey.currentState!.openDrawer();
          setState(() {});
        },
        icon: Icon(
          Icons.menu_outlined,
          color: Colors.white,
          size: 32,
        ),
      ),
    );
  }
}
