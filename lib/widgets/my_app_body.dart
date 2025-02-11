import 'package:flutter/material.dart';
import 'package:resposive_adaptive_ui_train_1/widgets/tablet_layout.dart';

import 'custom_drawer.dart';
import 'desktop_layout.dart';
import 'mobile_layout.dart';

class MyAppBody extends StatefulWidget {
  const MyAppBody({super.key});

  @override
  State<MyAppBody> createState() => _MyAppBodyState();
}

class _MyAppBodyState extends State<MyAppBody> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    //var size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      key: scaffoldKey,
      drawer: const CustomDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            scaffoldKey.currentState!.openDrawer();
            setState(() {});
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
          child: LayoutBuilder(builder: (context, constraints) {
            if (constraints.maxWidth > 900) {
              return DesktopLayout();
            } else if (constraints.maxWidth < 600) {
              return MobileLayout();
            } else {
              return TabletLayout();
            }
          })),
    );
  }
}
