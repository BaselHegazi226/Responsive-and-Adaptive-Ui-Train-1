import 'package:flutter/material.dart';

import 'custom_drawer.dart';
import 'custom_sliver_grid.dart';
import 'custom_sliver_list.dart';

class MyAppBody extends StatefulWidget {
  const MyAppBody({super.key});

  @override
  State<MyAppBody> createState() => _MyAppBodyState();
}

class _MyAppBodyState extends State<MyAppBody> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      key: scaffoldKey,
      drawer: const CustomDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            scaffoldKey.currentState!.openDrawer();
          },
          icon: Icon(
            Icons.menu_outlined,
            color: Colors.black,
            size: 32,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          right: 8,
          left: 8,
          top: 16,
          bottom: 8,
        ),
        child: CustomScrollView(
          slivers: [
            CustomSliverGrid(),
            CustomSliverList(),
          ],
        ),
      ),
    );
  }
}
